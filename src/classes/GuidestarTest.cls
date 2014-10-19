@isTest
public class GuidestarTest {
    
    public static final String charityCheckJson = '{\"organization_id\":\"8424440\",\"organization_info_last_modified\":\"3\\/13\\/2014 10:30:54 AM\",\"ein\":\"94-3347800\",\"organization_name\":\"Salesforce Com Foundation\",\"organization_name_aka\":\"Salesforce.org\",\"addressline_1\":\"Landmark Building\",\"addressline_2\":\"1 Market Plaza Ste 300\",\"city\":\"San Francisco\",\"state\":\"CA\",\"state_name\":\"California\",\"zip\":\"94105\",\"charity_check_last_modified\":\"5\\/20\\/2014 10:40:28 AM\",\"pub78_organization_name\":\"Salesforce Com Foundation\",\"pub78_ein\":\"94-3347800\",\"pub78_verified\":\"True\",\"pub78_city\":\"San Francisco\",\"pub78_state\":\"CA\",\"pub78_indicator\":\"0\",\"deductibility_status_description_code_1\":\"PC\",\"organization_type_1\":\"A public charity (50% deductibility limitation).\",\"deductibility_limitation_1\":\"50%\",\"deductibility_status_description_code_2\":\"\",\"organization_type_2\":\"\",\"deductibility_limitation_2\":\"\",\"deductibility_status_description_code_3\":\"\",\"organization_type_3\":\"\",\"deductibility_limitation_3\":\"\",\"deductibility_status_description_code_4\":\"\",\"organization_type_4\":\"\",\"deductibility_limitation_4\":\"\",\"deductibility_status_description_code_5\":\"\",\"organization_type_5\":\"\",\"deductibility_limitation_5\":\"\",\"deductibility_status_description_code_6\":\"\",\"organization_type_6\":\"\",\"deductibility_limitation_6\":\"\",\"deductibility_status_description_code_7\":\"\",\"organization_type_7\":\"\",\"deductibility_limitation_7\":\"\",\"most_recent_pub78\":\"5\\/12\\/2014 12:00:00 AM\",\"most_recent_irb\":\"5\\/19\\/2014 12:00:00 AM\",\"bmf_organization_name\":\"SALESFORCE COM FOUNDATION\",\"bmf_ein\":\"94-3347800\",\"bmf_status\":\"True\",\"most_recent_bmf\":\"5\\/12\\/2014 12:00:00 AM\",\"bmf_subsection\":\"03\",\"subsection_description\":\"501(c)(3) Public Charity\",\"foundation_code\":\"15\",\"foundation_code_description\":\"Organization which receives a substantial part of its support from a governmental unit or the general public\",\"ruling_month\":\"05\",\"ruling_year\":\"2000\",\"adv_ruling_month\":\"09\",\"adv_ruling_year\":\"2004\",\"group_exemption\":\"0000\",\"exemp_status_code\":\"01\",\"ofac_status\":\"\",\"revocation_code\":\"\",\"revocation_date\":\"\",\"reinstatement_date\":\"\",\"irs_bmf_pub78_conflict\":\"False\",\"foundation_509a_status\":\"Section 509(a)(1) organization as referred to in Section 170(b)(1)(A)(vi)\",\"irb_organization_id\":\"\",\"bulletin_number\":\"\",\"bulletin_url\":\"\",\"effective_date\":\"\",\"irb_last_modified\":\"\",\"report_date\":\"5\\/21\\/2014 8:30:30 PM\",\"retrieval_time_in_milliseconds\":\"3.4816\",\"total_pipeline_time_in_milliseconds\":\"10.2069\"}';
    public static final String orgSearchJson = '{\"total_hits\": 2,\"search_time\": 287,\"document_retrieval_time\": 0,\"total_time\": 287,\"auth_time\": 0,\"showing\": \"1 - 2 of 2\",\"hits\": [  {    \"organization_id\": 8424440,    \"ein\": \"94-3347800\",    \"organization_name\": \"Salesforce Com Foundation\",    \"mission\": \"We are proving the model of giving:  .: 1% Time .: 1% Equity .: 1% Profit* by harnessing the enthusiasm and energy of the salesforce.com community to make a positive difference in people\'s lives through service and technology-related projects for youth.\",    \"city\": \"San Francisco\",    \"state\": \"CA\",    \"zip\": \"94105\",    \"nteecode\": \"T30 (Public Foundations)\",    \"participation\": \"Silver\",    \"public_report\": \"http://www.guidestar.org/organizations/94-3347800/salesforce-com-foundation.aspx\",    \"irs_subsection\": \"501(c)(3) Public Charity\",    \"msa\": \"7360 San Francisco-Oakland, CA\",    \"logo_url\": \"\"  },  {    \"organization_id\": 8815742,    \"ein\": \"26-2409769\",    \"organization_name\": \"SALESFORCE ORG\",    \"mission\": \"TO LEVERAGE THE POWER OF SALESFORCE. COM\'S PEOPLE, TECHNOLOGY, AND RESOURCES TO IMPROVE COMMUNITIES AND PROMOTE COMPASSIONATE CAPITALISM.\",    \"city\": \"San Francisco\",    \"state\": \"CA\",    \"zip\": \"94105\",    \"nteecode\": \"S02 (Management & Technical Assistance)\",    \"participation\": \"\",    \"public_report\": \"http://www.guidestar.org/organizations/26-2409769/salesforce-org.aspx\",    \"irs_subsection\": \"501(c)(4) Civic Leagues and Social Welfare Organizations\",    \"msa\": \"7360 San Francisco-Oakland, CA\",    \"logo_url\": \"\"  }],\"retrieval_time_in_milliseconds\": \"287.3604\",\"total_pipeline_time_in_milliseconds\": \"314.6221\"}';
    public static final String orgDetailJson = '{\"organization_id\":8424440,\"ein\":\"94-3347800\",\"organization_name\":\"Salesforce Com Foundation\",\"address_line1\":\"Landmark Building\",\"address_line2\":\"1 Market Plaza Ste 300\",\"city\":\"San Francisco\",\"state\":\"CA\",\"zip\":\"94105\",\"zip4\":\"\",\"affiliation_code\":\"3\",\"affiliation_code_description\":\"Independent - This code is used if the organization is an indepenedent organization or an independent auxiliary (i.e., not affiliated with a a National, Regional, or Geographic grouping of organizations).\",\"aka_organization_name\":\"Salesforce.org\",\"assets\":13275380.0000,\"contact_fax\":\"\",\"contact_phone\":\"415-901-7000\",\"deductibility_code\":\"1\",\"deductibility_code_description\":\"Contributions are deductible, as provided by law\",\"expenses_total\":10392835.0000,\"foundation_code\":\"15\",\"foundation_code_description\":\"Organization which receives a substantial part of its support from a governmental unit or the general public\",\"group_exemption\":\"0000 \",\"income_total\":3674726.0000,\"subsection_code\":\"03\",\"subsection_code_description\":\"Private Foundations and Public Charities\",\"is_national_hq\":0,\"liability_total_eoy\":9559104.0000,\"mission\":\"We are proving the model of giving:  .: 1% Time .: 1% Equity .: 1% Profit* by harnessing the enthusiasm and energy of the salesforce.com community to make a positive difference in people\'s lives through service and technology-related projects for youth.\",\"telephone\":\"415-901-7000\",\"report_page\":\"http:\\/\\/www.guidestar.org\\/organizations\\/94-3347800\\/salesforce-com-foundation.aspx\",\"ruling_year\":\"2000\",\"tax_year\":2013,\"website\":\"http:\\/\\/www.salesforcefoundation.org\",\"year_founded\":\"1999\",\"revenue_total\":3621591.0000,\"geographic_areas_served\":[{\"geographic_area_served_id\":213449,\"organization_id\":8424440,\"area_served\":\"Internationally\"}],\"organization_ntee_codes\":[{\"organizationnteeid\":2943800,\"organizationid\":8424440,\"nteecode\":\"B12\",\"ntee_code_details\":{\"nteecodeid\":48,\"nteecode\":\"B12\",\"nteecodedescription\":\"Fund Raising and\\/or Fund Distribution\",\"lastmodified\":\"\\/Date(1380307509500-0400)\\/\"}},{\"organizationnteeid\":2943801,\"organizationid\":8424440,\"nteecode\":\"T30\",\"ntee_code_details\":{\"nteecodeid\":509,\"nteecode\":\"T30\",\"nteecodedescription\":\"Public Foundations\",\"lastmodified\":\"\\/Date(1380307509500-0400)\\/\"}}],\"people\":[{\"personid\":343821,\"organizationid\":8424440,\"prefix\":\"Ms.\",\"firstname\":\"Sue\",\"middlename\":null,\"lastname\":\"McGilpin\",\"suffix\":null,\"title\":\"Operations Manager\",\"email\":\"smcgilpin@salesforce.com\",\"telephone\":\"415-901-7000\",\"fax\":null,\"person_types\":[{\"person_type_id\":7,\"person_type_description\":\"Primary Contact\",\"last_modified\":\"\\/Date(1360268009670-0500)\\/\"}]},{\"personid\":343861,\"organizationid\":8424440,\"prefix\":\"\",\"firstname\":\"Suzanne\",\"middlename\":null,\"lastname\":\"DiBianca\",\"suffix\":null,\"title\":null,\"email\":null,\"telephone\":null,\"fax\":null,\"person_types\":[{\"person_type_id\":8,\"person_type_description\":\"Leader (i.e. President, CEO, Executive Director)\",\"last_modified\":\"\\/Date(1360268009670-0500)\\/\"}]}],\"programs\":[{\"programid\":972497,\"organizationid\":8424440,\"programdescription\":\"Global donation of the salesforce.com CRM service.  Gloabal volunteer programs for salesforce.com employees.  Global granting program for youth organizations.\"},{\"programid\":972498,\"organizationid\":8424440,\"programdescription\":\"Matching Grants program for all eligible employee.\"},{\"programid\":972511,\"organizationid\":8424440,\"programdescription\":\"Technology Programs bring technology to under served areas internationally.\"}],\"retrieval_time_in_milliseconds\":\"317.6519\",\"total_pipeline_time_in_milliseconds\":\"543.1079\"}';

    private static testmethod void testCharityCheck() {
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());
        test.startTest();
        Guidestar gs = new Guidestar('somebody@salesforce.com','password');
        Guidestar.CharityCheck cc = gs.charityCheck('94-3347800');
        system.debug(cc);
        Date dmr = gs.convertDate(cc.most_recent_pub78);
        Datetime dtmr = gs.convertDatetime(cc.most_recent_pub78);
        test.stopTest();
        System.assertNotEquals(null, cc.responseJson);
        System.assertEquals('San Francisco', cc.city);
        System.assertEquals(true, cc.isVerified());
        System.assertEquals(5, dmr.month());
        System.assertEquals(0, dtmr.minute());
    }   
  
    private static testmethod void testCharityCheckBadEin() {
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator()); 
        test.startTest();
        Guidestar gs = new Guidestar('key1', 'key2', 'key3');
        Guidestar.GuidestarException gse;
        try {
            Guidestar.CharityCheck cc = gs.charityCheck('bogus123');
        } catch (Guidestar.GuidestarException e) {
            gse = e;
        }
        system.debug(gse);
        test.stopTest();
        System.assertEquals('EIN must consist of 9 numbers (e.g. 94-3347800).', gse.getMessage());
    }   
  
    private static testmethod void testCharityCheckNada() {
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator(404, null));  // return no result
        test.startTest();
        Guidestar gs = new Guidestar();
        Guidestar.GuidestarException gse;
        Guidestar.CharityCheck cc;
        try {
            cc = gs.charityCheck('94-3347800');
        } catch (Guidestar.GuidestarException e) {
            gse = e;
        }
        system.debug(gse);
        test.stopTest();
        // no results
        System.assertEquals(null, gse);
        System.assertEquals(null, cc);
    }   
  
    private static testmethod void testCharityCheckError() {
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator(403, null));  // return an error
        test.startTest();
        Guidestar gs = new Guidestar();
        Guidestar.GuidestarException gse;
        try {
            Guidestar.CharityCheck cc = gs.charityCheck('94-3347800');
        } catch (Guidestar.GuidestarException e) {
            gse = e;
        }
        system.debug(gse);
        test.stopTest();
        System.assertEquals(403, gse.statusCode);
        System.assertEquals('Rats! Guidestar returned status code 403: Forbidden. The API understood the request, but is refusing to fulfill it. Most commonly, this means that the user has exceeded their request limit or does not have permissions to access this API.', gse.getMessage());
    }   
  
    private static testmethod void testOrgSearch() {
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());
        test.startTest();
        Guidestar gs = new Guidestar();
        Guidestar.OrgSearch result = gs.orgSearch('Salesforce');
        system.debug(result);
        test.stopTest();
        System.assertEquals(2, result.hits.size());
        System.assertEquals(8424440, result.hits[0].organization_id);

        // for coverage
        result = gs.orgSearch('Salesforce', null, 5, 5);
    }   
  
    private static testmethod void testOrgDetail() {
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());
        test.startTest();
        Guidestar gs = new Guidestar();
        Guidestar.OrgDetail detail = gs.orgDetail(8424440);
        Date dmr = gs.convertDate(detail.organization_ntee_codes[0].ntee_code_details.lastmodified);
        Datetime dtmr = gs.convertDatetime(detail.organization_ntee_codes[0].ntee_code_details.lastmodified);
        system.debug(detail);
        test.stopTest();
        System.assertEquals('Salesforce Com Foundation', detail.organization_name);
        System.assertEquals('B12', detail.organization_ntee_codes[0].nteecode);
        System.assertEquals(9, dmr.month());
        System.assertEquals(45, dtmr.minute());
    }   
    
    private static testmethod void classCoverage() {
        Guidestar.CharityCheck cc = new Guidestar.CharityCheck();
        Guidestar.OrgDetail detail = new Guidestar.OrgDetail();
        Guidestar.OrgSearch result = new Guidestar.OrgSearch();
        Guidestar.OrgHit hit = new Guidestar.OrgHit();
        Guidestar.Programs prog = new Guidestar.Programs();
        Guidestar.Ntee_Code_Details det = new Guidestar.Ntee_Code_Details();
        Guidestar.Geographic_Areas_Served ga = new Guidestar.Geographic_Areas_Served();
        Guidestar.Person_Types pt = new Guidestar.Person_Types();
        Guidestar.Organization_Ntee_Codes nt = new Guidestar.Organization_Ntee_Codes();
        Guidestar.Person ps = new Guidestar.Person();
    }

    public class MockHttpResponseGenerator implements HttpCalloutMock {
        Integer status;
        String response;
        public MockHttpResponseGenerator() {}
        public MockHttpResponseGenerator(Integer stat, String resp) { status = stat; response = resp; }

        public HTTPResponse respond(HTTPRequest req) {          
            String testResponse = 
                (response != null) ? response :
                (req.getEndpoint().containsIgnoreCase('/charitycheck/')) ? charityCheckJson :
                (req.getEndpoint().containsIgnoreCase('/search.json')) ? orgSearchJson :
                (req.getEndpoint().containsIgnoreCase('/detail/')) ? orgDetailJson :
                null;

            // Create a fake response
            HttpResponse res = new HttpResponse();
            res.setHeader('Content-Type', 'application/json');
            res.setBody(testResponse);
            res.setStatusCode((status == null) ? 200 : status);
            return res;
        }
    }

    /* 
    SAMPLE DATA FROM CHARITY CHECK API: 
    curl -3 -u nbailey@salesforce.com:nicksPwd https://data.guidestar.org/v1/charitycheck/94-3347800.json
    {
      "organization_id": "8424440",
      "organization_info_last_modified": "3/13/2014 10:30:54 AM",
      "ein": "94-3347800",
      "organization_name": "Salesforce Com Foundation",
      "organization_name_aka": "Salesforce.org",
      "addressline_1": "Landmark Building",
      "addressline_2": "1 Market Plaza Ste 300",
      "city": "San Francisco",
      "state": "CA",
      "state_name": "California",
      "zip": "94105",
      "charity_check_last_modified": "5/20/2014 10:40:28 AM",
      "pub78_organization_name": "Salesforce Com Foundation",
      "pub78_ein": "94-3347800",
      "pub78_verified": "True",
      "pub78_city": "San Francisco",
      "pub78_state": "CA",
      "pub78_indicator": "0",
      "deductibility_status_description_code_1": "PC",
      "organization_type_1": "A public charity (50% deductibility limitation).",
      "deductibility_limitation_1": "50%",
      "deductibility_status_description_code_2": "",
      "organization_type_2": "",
      "deductibility_limitation_2": "",
      "deductibility_status_description_code_3": "",
      "organization_type_3": "",
      "deductibility_limitation_3": "",
      "deductibility_status_description_code_4": "",
      "organization_type_4": "",
      "deductibility_limitation_4": "",
      "deductibility_status_description_code_5": "",
      "organization_type_5": "",
      "deductibility_limitation_5": "",
      "deductibility_status_description_code_6": "",
      "organization_type_6": "",
      "deductibility_limitation_6": "",
      "deductibility_status_description_code_7": "",
      "organization_type_7": "",
      "deductibility_limitation_7": "",
      "most_recent_pub78": "5/12/2014 12:00:00 AM",
      "most_recent_irb": "5/19/2014 12:00:00 AM",
      "bmf_organization_name": "SALESFORCE COM FOUNDATION",
      "bmf_ein": "94-3347800",
      "bmf_status": "True",
      "most_recent_bmf": "5/12/2014 12:00:00 AM",
      "bmf_subsection": "03",
      "subsection_description": "501(c)(3) Public Charity",
      "foundation_code": "15",
      "foundation_code_description": "Organization which receives a substantial part of its support from a governmental unit or the general public",
      "ruling_month": "05",
      "ruling_year": "2000",
      "adv_ruling_month": "09",
      "adv_ruling_year": "2004",
      "group_exemption": "0000",
      "exemp_status_code": "01",
      "ofac_status": "",
      "revocation_code": "",
      "revocation_date": "",
      "reinstatement_date": "",
      "irs_bmf_pub78_conflict": "False",
      "foundation_509a_status": "Section 509(a)(1) organization as referred to in Section 170(b)(1)(A)(vi)",
      "irb_organization_id": "",
      "bulletin_number": "",
      "bulletin_url": "",
      "effective_date": "",
      "irb_last_modified": "",
      "report_date": "5/21/2014 8:30:30 PM",
      "retrieval_time_in_milliseconds": "3.4816",
      "total_pipeline_time_in_milliseconds": "10.2069"
    }

    SAMPLE DATA FROM SEARCH API: 
    curl -3 -u nbailey@salesforce.com:nicksPwd https://data.guidestar.org/v1/search.json?q=organization_name:salesforce*
    {
      "total_hits": 2,
      "search_time": 287,
      "document_retrieval_time": 0,
      "total_time": 287,
      "auth_time": 0,
      "showing": "1 - 2 of 2",
      "hits": [
        {
          "organization_id": 8424440,
          "ein": "94-3347800",
          "organization_name": "Salesforce Com Foundation",
          "mission": "We are proving the model of giving:  .: 1% Time .: 1% Equity .: 1% Profit* by harnessing the enthusiasm and energy of the salesforce.com community to make a positive difference in people's lives through service and technology-related projects for youth.",
          "city": "San Francisco",
          "state": "CA",
          "zip": "94105",
          "nteecode": "T30 (Public Foundations)",
          "participation": "Silver",
          "public_report": "http://www.guidestar.org/organizations/94-3347800/salesforce-com-foundation.aspx",
          "irs_subsection": "501(c)(3) Public Charity",
          "msa": "7360 San Francisco-Oakland, CA",
          "logo_url": ""
        },
        {
          "organization_id": 8815742,
          "ein": "26-2409769",
          "organization_name": "SALESFORCE ORG",
          "mission": "TO LEVERAGE THE POWER OF SALESFORCE. COM'S PEOPLE, TECHNOLOGY, AND RESOURCES TO IMPROVE COMMUNITIES AND PROMOTE COMPASSIONATE CAPITALISM.",
          "city": "San Francisco",
          "state": "CA",
          "zip": "94105",
          "nteecode": "S02 (Management & Technical Assistance)",
          "participation": "",
          "public_report": "http://www.guidestar.org/organizations/26-2409769/salesforce-org.aspx",
          "irs_subsection": "501(c)(4) Civic Leagues and Social Welfare Organizations",
          "msa": "7360 San Francisco-Oakland, CA",
          "logo_url": ""
        }
      ],
      "retrieval_time_in_milliseconds": "287.3604",
      "total_pipeline_time_in_milliseconds": "314.6221"
    }

    SAMPLE DATA FROM DETAIL API: 
    curl -3 -u nbailey@salesforce.com:nicksPwd https://data.guidestar.org/v1/detail/8424440.json
    {
      "organization_id": 8424440,
      "ein": "94-3347800",
      "organization_name": "Salesforce Com Foundation",
      "address_line1": "Landmark Building",
      "address_line2": "1 Market Plaza Ste 300",
      "city": "San Francisco",
      "state": "CA",
      "zip": "94105",
      "zip4": "",
      "affiliation_code": "3",
      "affiliation_code_description": "Independent - This code is used if the organization is an indepenedent organization or an independent auxiliary (i.e., not affiliated with a a National, Regional, or Geographic grouping of organizations).",
      "aka_organization_name": "Salesforce.org",
      "assets": 13275380.0000,
      "contact_fax": "",
      "contact_phone": "415-901-7000",
      "deductibility_code": "1",
      "deductibility_code_description": "Contributions are deductible, as provided by law",
      "expenses_total": 10392835.0000,
      "foundation_code": "15",
      "foundation_code_description": "Organization which receives a substantial part of its support from a governmental unit or the general public",
      "group_exemption": "0000 ",
      "income_total": 3674726.0000,
      "subsection_code": "03",
      "subsection_code_description": "Private Foundations and Public Charities",
      "is_national_hq": 0,
      "liability_total_eoy": 9559104.0000,
      "mission": "We are proving the model of giving:  .: 1% Time .: 1% Equity .: 1% Profit* by harnessing the enthusiasm and energy of the salesforce.com community to make a positive difference in people's lives through service and technology-related projects for youth.",
      "telephone": "415-901-7000",
      "report_page": "http://www.guidestar.org/organizations/94-3347800/salesforce-com-foundation.aspx",
      "ruling_year": "2000",
      "tax_year": 2013,
      "website": "http://www.salesforcefoundation.org",
      "year_founded": "1999",
      "revenue_total": 3621591.0000,
      "geographic_areas_served": [
        {
          "geographic_area_served_id": 213449,
          "organization_id": 8424440,
          "area_served": "Internationally"
        }
      ],
      "organization_ntee_codes": [
        {
          "organizationnteeid": 2943800,
          "organizationid": 8424440,
          "nteecode": "B12",
          "ntee_code_details": {
            "nteecodeid": 48,
            "nteecode": "B12",
            "nteecodedescription": "Fund Raising and/or Fund Distribution",
            "lastmodified": "/Date(1380307509500-0400)/"
          }
        },
        {
          "organizationnteeid": 2943801,
          "organizationid": 8424440,
          "nteecode": "T30",
          "ntee_code_details": {
            "nteecodeid": 509,
            "nteecode": "T30",
            "nteecodedescription": "Public Foundations",
            "lastmodified": "/Date(1380307509500-0400)/"
          }
        }
      ],
      "people": [
        {
          "personid": 343821,
          "organizationid": 8424440,
          "prefix": "Ms.",
          "firstname": "Sue",
          "middlename": null,
          "lastname": "McGilpin",
          "suffix": null,
          "title": "Operations Manager",
          "email": "smcgilpin@salesforce.com",
          "telephone": "415-901-7000",
          "fax": null,
          "person_types": [
            {
              "person_type_id": 7,
              "person_type_description": "Primary Contact",
              "last_modified": "/Date(1360268009670-0500)/"
            }
          ]
        },
        {
          "personid": 343861,
          "organizationid": 8424440,
          "prefix": "",
          "firstname": "Suzanne",
          "middlename": null,
          "lastname": "DiBianca",
          "suffix": null,
          "title": null,
          "email": null,
          "telephone": null,
          "fax": null,
          "person_types": [
            {
              "person_type_id": 8,
              "person_type_description": "Leader (i.e. President, CEO, Executive Director)",
              "last_modified": "/Date(1360268009670-0500)/"
            }
          ]
        }
      ],
      "programs": [
        {
          "programid": 972497,
          "organizationid": 8424440,
          "programdescription": "Global donation of the salesforce.com CRM service.  Gloabal volunteer programs for salesforce.com employees.  Global granting program for youth organizations."
        },
        {
          "programid": 972498,
          "organizationid": 8424440,
          "programdescription": "Matching Grants program for all eligible employee."
        },
        {
          "programid": 972511,
          "organizationid": 8424440,
          "programdescription": "Technology Programs bring technology to under served areas internationally."
        }
      ],
      "retrieval_time_in_milliseconds": "317.6519",
      "total_pipeline_time_in_milliseconds": "543.1079"
    }
    */  
}