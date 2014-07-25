/** 
 ** Apex class that implements the Guidestar API - https://data.guidestar.org
 **
 ** Copyright (c) 2014 Salesforce.com Foundation
**/
global with sharing class Guidestar {

	Guidestar_Settings__c settings = Guidestar_Settings__c.getInstance();
	private String baseEndpoint = 'https://data.guidestar.org/v1/';
	private String userId;
	private String password;

	/** 
	 ** Constructors - you can provide the auth credentials or look them up from custom settings
	**/
	public Guidestar(String uid, String pwd) {
		userId = uid;
		password = pwd;
	}
	public Guidestar() {
		userId = settings.API_User_Id__c;
		password = settings.API_Password__c;
	}

	global class GuidestarException extends Exception {
		public Integer statusCode { get; set; }
	}

	/** 
	 ** Custom data types for response data
	**/
	global class CharityCheck {
		public String organization_id;
		public String organization_info_last_modified;
		public String ein;
		public String organization_name;
		public String organization_name_aka;
		public String addressline_1;
		public String addressline_2;
		public String city;
		public String state;
		public String state_name;
		public String zip;
		public String charity_check_last_modified;
		public String pub78_organization_name;
		public String pub78_ein;
		public String pub78_verified;
		public String pub78_city;
		public String pub78_state;
		public String pub78_indicator;
		public String deductibility_status_description_code_1;
		public String organization_type_1;
		public String deductibility_limitation_1;
		public String deductibility_status_description_code_2;
		public String organization_type_2;
		public String deductibility_limitation_2;
		public String deductibility_status_description_code_3;
		public String organization_type_3;
		public String deductibility_limitation_3;
		public String deductibility_status_description_code_4;
		public String organization_type_4;
		public String deductibility_limitation_4;
		public String deductibility_status_description_code_5;
		public String organization_type_5;
		public String deductibility_limitation_5;
		public String deductibility_status_description_code_6;
		public String organization_type_6;
		public String deductibility_limitation_6;
		public String deductibility_status_description_code_7;
		public String organization_type_7;
		public String deductibility_limitation_7;
		public String most_recent_pub78;
		public String most_recent_irb;
		public String bmf_organization_name;
		public String bmf_ein;
		public String bmf_status;
		public String most_recent_bmf;
		public String bmf_subsection;
		public String subsection_description;
		public String foundation_code;
		public String foundation_code_description;
		public String ruling_month;
		public String ruling_year;
		public String adv_ruling_month;
		public String adv_ruling_year;
		public String group_exemption;
		public String exemp_status_code;
		public String ofac_status;
		public String revocation_code;
		public String revocation_date;
		public String reinstatement_date;
		public String irs_bmf_pub78_conflict;
		public String foundation_509a_status;
		public String irb_organization_id;
		public String bulletin_number;
		public String bulletin_url;
		public String effective_date;
		public String irb_last_modified;
		public String report_date;
		public String retrieval_time_in_milliseconds;
		public String total_pipeline_time_in_milliseconds;
		public String responseJson;

		// utility method to check if the org is 501c3 verified
		public Boolean isVerified() {
			return ( pub78_verified == 'True' && bmf_status == 'True' && (ofac_status == null || ofac_status == '')
						&& subsection_description == '501(c)(3) Public Charity');
		}
	}

	global class OrgSearch {
		public Integer total_hits;
		public Integer search_time;
		public Integer document_retrieval_time;
		public Integer total_time;
		public Integer auth_time;
		public String showing;
		public list<OrgHit> hits;
		public String retrieval_time_in_milliseconds;
		public String total_pipeline_time_in_milliseconds;
		public String responseJson;
	}

	global class OrgHit {
		public Integer organization_id;
		public String ein;
		public String organization_name;
		public String mission;
		public String city;
		public String state;
		public String zip;
		public String nteecode;
		public String participation;
		public String public_report;
		public String irs_subsection;
		public String msa;
		public String logo_url;
	}

	global class OrgDetail {
		public Integer organization_id;
		public String ein;
		public String organization_name;
		public String address_line1;
		public String address_line2;
		public String city;
		public String state;
		public String zip;
		public String zip4;
		public String affiliation_code;
		public String affiliation_code_description;
		public String aka_organization_name;
		public Double assets;
		public String contact_fax;
		public String contact_phone;
		public String deductibility_code;
		public String deductibility_code_description;
		public Double expenses_total;
		public String foundation_code;
		public String foundation_code_description;
		public String group_exemption;
		public Double income_total;
		public String subsection_code;
		public String subsection_code_description;
		public Integer is_national_hq;
		public Double liability_total_eoy;
		public String mission;
		public String telephone;
		public String report_page;
		public String ruling_year;
		public Integer tax_year;
		public String website;
		public String year_founded;
		public Double revenue_total;
		public List<Geographic_Areas_Served> geographic_areas_served;
		public List<Organization_Ntee_Codes> organization_ntee_codes;
		public List<Person> people;
		public List<Programs> programs;
		public String retrieval_time_in_milliseconds;
		public String total_pipeline_time_in_milliseconds;
		public String responseJson;
	}

	global class Programs {
		public Integer programid;
		public Integer organizationid;
		public String programdescription;
	}

	global class Ntee_Code_Details {
		public Integer nteecodeid;
		public String nteecode;
		public String nteecodedescription;
		public String lastmodified;
	}

	global class Geographic_Areas_Served {
		public Integer geographic_area_served_id;
		public Integer organization_id;
		public String area_served;
	}

	global class Person_Types {
		public Integer person_type_id;
		public String person_type_description;
		public String last_modified;
	}

	global class Organization_Ntee_Codes {
		public Integer organizationnteeid;
		public Integer organizationid;
		public String nteecode;
		public Ntee_Code_Details ntee_code_details;
	}

	global class Person {
		public Integer personid;
		public Integer organizationid;
		public String prefix;
		public String firstname;
		public String middlename;
		public String lastname;
		public String suffix;
		public String title;
		public String email;
		public String telephone;
		public String fax;
		public List<Person_Types> person_types;
	}
	
	/** 
	 ** Main method for CharityCheck API - provide 9-digit API and get back all the verification data
	**/
	public CharityCheck charityCheck( String ein ) {
		CharityCheck cc;
		String endpoint = baseEndpoint + 'charitycheck/' + cleanEin(ein) + '.json';
		String js = callGuidestar( endpoint );
		if (js != null) { 
			cc = ((CharityCheck)(JSON.deserialize(js, CharityCheck.class)));
			cc.responseJson = JSON.serializePretty(cc);
		}
		return cc;
	}

	/** 
	 ** Methods for Search API
	 **
	 ** query is the string to search for
	 ** searchBy param can be one of keyword, name, ein, or zip (defaults to keyword)
	 ** page allows you to retrieve additional results if there are more than the page size
	 ** resultsPerPage can be 1 to 25, but defaults to 10
	**/
	public OrgSearch orgSearch( String query, String searchBy, Integer page, Integer resultsPerPage ) {
		OrgSearch os;
		String endpoint = baseEndpoint + 'search.json?q=';

		if (searchBy == 'name') {			
			endpoint += 'organization_name:' + EncodingUtil.urlEncode('"' + query + '"', 'UTF-8');
			if (query.contains('.')) {
				endpoint += '%20OR%20organization_name:' + EncodingUtil.urlEncode('"' + query.replace('.', ' ') + '"', 'UTF-8');
			}			
		} else if (searchBy == 'ein') {
			endpoint += 'ein:' + cleanEin(query);
		} else if (searchBy == 'zip') {
			endpoint += 'zip:' + query;
		} else {
			endpoint += EncodingUtil.urlEncode(query, 'UTF-8');
		}
		endpoint = endpoint.replace('+','%20');

		if (page != null) endpoint += '&p=' + String.valueOf(page);
		if (resultsPerPage != null) endpoint += '&r=' + String.valueOf(resultsPerPage);
		String js = callGuidestar( endpoint );
		if (js != null) {
			os = ((OrgSearch)(JSON.deserialize(js, OrgSearch.class)));
			os.responseJson = JSON.serializePretty(os);
		}
		return os;
	}
	// method that returns the first page of up to 10 results
	public OrgSearch orgSearch( String query, String searchBy ) {
		return orgSearch( query, searchBy, null, null );
	}
	// default method that searches by org name and returns the first page of up to 10 results
	public OrgSearch orgSearch( String query ) {
		return orgSearch( query, 'name', null, null );	
	}

	/** 
	 ** Main method for Detail API - provide 7-digit Guidestar ID and get back all the org data
	**/
	public OrgDetail orgDetail( Integer guidestarId ) {
		OrgDetail od;
		String endpoint = baseEndpoint + 'detail/' + String.valueOf(guidestarId) + '.json';
		String js = callGuidestar( endpoint );
		if (js != null) {
			od = ((OrgDetail)(JSON.deserialize(js, OrgDetail.class)));
			od.responseJson = JSON.serializePretty(od);
		}
		return od;
	}

	/** 
	 ** Utility methods for dates
	**/
	public Datetime convertDateTime( String ds ) {
		if (ds == null || ds == '') return null;
		list<String> dp = ds.split(' ');
		list<String> dc = dp[0].split('/');
		list<String> tc = dp[1].split(':');
		if (dp[2] == 'PM') tc[0] += 12;
		return Datetime.newInstance( Integer.valueOf(dc[2]), Integer.valueOf(dc[0]), Integer.valueOf(dc[1]), 
											Integer.valueOf(tc[0]), Integer.valueOf(tc[1]), Integer.valueOf(tc[2]) );
	}
	public Date convertDate( String ds ) {
		if (ds == null || ds == '') return null;
		list<String> dp = ds.split(' ');
		list<String> dc = dp[0].split('/');
		return Date.newInstance( Integer.valueOf(dc[2]), Integer.valueOf(dc[0]), Integer.valueOf(dc[1]) );
	}

	/** 
	 ** Shared methods
	**/
	private String cleanEin(String ein) {
		if (ein == null) throw new GuidestarException('EIN cannot be null.');
		ein = ein.replace('-', '').replace(' ', '');
		if (ein.length() != 9) throw new GuidestarException('EIN must consist of 9 numbers (e.g. 94-3347800).');
		if (!ein.isNumeric()) throw new GuidestarException('EIN must be numeric (e.g. 94-3347800).');
		return (ein.left(2) + '-' + ein.right(7));
	}

	private String callGuidestar( String endpoint ) {

		HttpRequest http = new HttpRequest();
		http.setEndpoint(endpoint);
		http.setMethod('GET');
		Blob headerValue = Blob.valueOf(userId + ':' + password);
		String authorizationHeader = 'Basic ' + String.valueOf(EncodingUtil.base64Encode(headerValue));
		http.setHeader('Authorization', authorizationHeader);		
		String response;
		Integer statusCode;
		Http con = new Http();
		HttpResponse hs = new HttpResponse();		
		//system.debug(LoggingLevel.WARN, 'guidestar request >>>> \n' + String.valueOf(http) + '\n');
		hs = con.send(http);
		
		if (hs.getStatusCode() == 200) {
			//system.debug(LoggingLevel.WARN, 'guidestar response >>>> \n'+ hs.getBody() + '\n');
			return hs.getBody();
		} else if (hs.getStatusCode() == 404) {
			//system.debug(LoggingLevel.WARN, 'guidestar response >>>> \nError 404: There is an error in the URL string or the requested information is not available.\n');
			return null;
		} else {
			Integer status = hs.getStatusCode();
			String err = 'Rats! Guidestar returned status code ' + String.valueOf(status);
			if (status == 401)
				err += ': Unauthorized. The request requires user authentication.';
			else if (status == 403)
				err += ': Forbidden. The API understood the request, but is refusing to fulfill it. Most commonly, this means that the user has exceeded their request limit or does not have permissions to access this API.';
			else if (status == 500)
				err += ': Server Error. The API encountered an unexpected condition which prevented it from fulfilling the request.';
			else if (status == 503)
				err += ': Service Unavailable. The API is unavailable to handle the request due to a temporary overloading or maintenance of the server.';
			else
				err += '.';

			GuidestarException ge = new GuidestarException(err);
			ge.statusCode = status;
			throw ge;
		}
	}
}