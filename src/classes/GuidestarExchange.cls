/** 
 ** Apex class that implements the Guidestar Exchange API - https://data.guidestar.org
 **
 ** Copyright (c) 2014 Salesforce.com Foundation
**/
global with sharing class GuidestarExchange extends Guidestar {

  public String exchangeApiKey { protected get; set; }

  /** 
   ** Constructors - you can provide the auth credentials or look them up from custom settings
  **/
  public GuidestarExchange(String uid, String pwd) {
    super(uid, pwd);
  }
  public GuidestarExchange(String searchKey, String cchkKey, String detailKey, String exchangeKey) {
    super(searchKey, cchkKey, detailKey);
    exchangeApiKey = exchangeKey;
  }
  public GuidestarExchange() {
    super();
    exchangeApiKey = settings.Exchange_API_Key__c;
  }

  global class OrgExchange { 
    public Integer organization_id;
    public String government_issued_id;
    public String bridge_id;
    public String primary_organization_name;
    public String also_known_as;
    public String doing_business_as;
    public List<Exchange_Organization_Fka> organization_fkas;
    public String government_registered_name;
    public String logo_path;
    public String logo_name;
    public Integer government_issued_ruling_year;
    public Integer year_founded;
    public Integer incorporation_year;
    public String keywords;
    public String mission_statement;
    public List<Exchange_Geographic_Area> geographic_areas_served;
    public String geographic_areas_served_narrative;
    public String impact_statement;
    public String ceo_comments;
    public String participation_level;
    public List<Exchange_Telephone> telephones;
    public List<Exchange_Address> addresses;
    public List<Exchange_Url> urls;
    public List<Exchange_Email> emails;
    public List<Exchange_Ntee_Code> ntee_codes;
    public List<Exchange_Financials> financials;
    public List<Exchange_Person> people;
    public List<Exchange_Program> programs;
    public List<Exchange_Document> documents;
    public List<Exchange_Funding_Source> funding_sources;
    public List<Exchange_Accreditation> accreditations;
    public List<Exchange_Award> awards;
    public List<Exchange_Affiliation> affiliations;
    public List<Exchange_Ci_Answer> ci_answers;
    public List<Exchange_Multimedia> multimedia;
    public String notes;
    public String retrieval_time_in_milliseconds;
    public String total_pipeline_time_in_milliseconds;
    public String responseJson;    
  }

  global class Exchange_Accreditation {
    public Integer accredidation_id;
    public String accredidation_description;
    public String last_modified;
  }

  global class Exchange_Award {
    public Integer award_id;
    public String award_description;
    public String last_modified;
  }

  global class Exchange_Affiliation {
    public Integer affiliation_id;
    public String affiliation_description;
    public String last_modified;
  }

  global class Exchange_Program {
    public Integer program_id;
    public Integer organization_id;
    public String program_name;
    public String program_description;
    public Double program_budget;
    public String npc_code;
    public String npc_code_description;
    public String long_term_success;
    public String short_term_success;
    public String success_monitored_by;
    public String examples_of_success;
    public String keyword;
    public List<String> program_target_population_description;
  }

  global class Exchange_Address_Type {
    public Integer address_type_id;
    public String address_type_description;
    public String last_modified;
  }

  global class Exchange_Email {
    public Integer email_id;
    public Integer organization_id;
    public Integer email_type_id;
    public Exchange_Email_Type email_type;
    public String email_address;
  }

  global class Exchange_Address {
    public Integer address_id;
    public Integer address_type_id;
    public Exchange_Address_Type address_type;
    public String address_line_1;
    public String address_line_2;
    public String city;
    public String country_subdivision_abbrev;
    public String country_abbrev;
    public String postal_code;
    public String postal_code_plus;
    public Exchange_Telephone telephone;
  }

  global class Exchange_Multimedia {
    public Integer multimediaid;
    public Integer organizationid;
    public Exchange_Multimedia_Type multimediatypeid;
    public String caption;
    public String multimediaurl;
  }

  global class Exchange_Url {
    public Integer url_id;
    public Integer organization_id;
    public Integer url_type_id;
    public Exchange_Url_Type url_type;
    public String url_address;
  }

  global class Exchange_Organization_Fka {
    public Integer person_type_id;
    public String person_type_description;
    public String last_modified;
  }

  global class Exchange_Financials {
    public Integer financials_id;
    public Integer organization_id;
    public String xml_document_id;
    public String fin_id;
    public String ftapprovedform_id;
    public String fiscal_year_start;
    public String fiscal_year_end;
    public Double contrib_gifts_grants;
    public Double program_service_revenue;
    public Double membership_dues;
    public Double special_events_net_income;
    public String other_revenue_description;
    public Double other_revenue;
    public Double total_revenue;
    public Double program_expenses;
    public Double administration_expenses;
    public Double fundraising_expenses;
    public Double payments_to_affiliates;
    public String other_expense_description;
    public Double other_expense;
    public Double total_expenses;
    public Double total_assets;
    public Double total_liabilities;
    public Double net_assets_fund_balance_eoy;
  }

  global class Exchange_Ntee_Code {
    public Integer organization_ntee_id;
    public Integer organization_id;
    public String ntee_code;
    public Exchange_Ntee_Code_Detail ntee_code_detail;
  }

  global class Exchange_Ci_Answer {
    public Integer ci_answer_id;
    public Integer organization_id;
    public String answer;
    public Exchange_Question question;
  }

  global class Exchange_Telephone_Type {
    public Integer telephone_type_id;
    public String telephone_type_description;
    public String last_modified;
  }

  global class Exchange_Telephone {
    public Integer telephone_id;
    public Integer telephone_type_id;
    public Exchange_Telephone_Type telephone_type;
    public String telephone_number;
  }

  global class Exchange_Geographic_Area {
    public Integer geographicareaservedid;
    public Integer organizationid;
    public String geographicareaserved;
  }

  global class Exchange_Funding_Source {
    public Integer funding_source_id;
    public String source;
    public Double amount;
    public Integer organizationid;
  }


  global class Exchange_Question {
    public Integer ci_question_id;
    public String question;
  }

  global class Exchange_Document {
    public Integer document_id;
    public Integer organization_id;
    public Integer document_type_id;
    public String document_type_description;
    public String document_name;
    public Integer document_year;
    public String document_size;
    public String document_path;
    public String start_date;
    public String end_date;
    public String description;
  }

  global class Exchange_Url_Type {
    public Integer url_type_id;
    public String url_type_description;
    public String last_modified;
  }

  global class Exchange_Ntee_Code_Detail {
    public Integer ntee_code_id;
    public String ntee_code;
    public String ntee_code_description;
    public String last_modified;
  }

  global class Exchange_Person_Type {
    public Integer person_type_id;
    public String person_type_description;
    public String last_modified;
  }

  global class Exchange_Multimedia_Type {
    public Integer multimedia_type_id;
    public String multimedia_type_description;
    public String last_modified;
  }

  global class Exchange_Person {
    public Integer person_id;
    public Integer organization_id;
    public String prefix;
    public String first_name;
    public String middle_name;
    public String last_name;
    public String suffix;
    public String title;
    public String affiliation;
    public String status;
    public String start_month;
    public String start_year;
    public String end_month;
    public String end_year;
    public String email;
    public String compensation;
    public String bio;
    public String picture;
    public List<Exchange_Person_Type> person_types;
    public List<Exchange_Telephone> telephones;
  }

  global class Exchange_Email_Type {
    public Integer email_type_id;
    public String email_type_description;
    public String last_modified;
  }

  /** 
  ** Main method for Exchange API - provide 7-digit Guidestar ID and get back all the org data
  **/
  public OrgExchange orgExchange( Integer guidestarId ) {
    OrgExchange od;
    String endpoint = baseEndpoint + 'exchange/' + String.valueOf(guidestarId) + '.json';
    String js = callGuidestar( endpoint, exchangeApiKey );
    if (js != null) {
      od = ((OrgExchange)(JSON.deserialize(js, OrgExchange.class)));
      od.responseJson = JSON.serializePretty(od);
    }
    return od;
  }

}