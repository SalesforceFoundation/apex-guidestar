apex-guidestar
==============

Salesforce.com Apex integration with the Guidestar API - supports search, detail, and charity check for Guidestar's extensive database of US nonprofit organizations.

Read all about the Guidestar API at [data.guidstar.org](https://data.guidestar.org/). 

Usage:

	// initialize the api class
    Guidestar gs = new Guidestar('somebody@example.com','password');    

    // search for an org by name
    Guidestar.OrgSearch result = gs.orgSearch('Salesforce');

    // search for an org by EIN - can also search by name, zip, or keyword
    Guidestar.OrgSearch result = gs.orgSearch('94-3347800', 'ein');

    // search for an org by zip code, retrieving the first page of 25 results
	Guidestar.OrgSearch('98101', 'zip', 1, 25 )

    // retrieve full organization detail for a guidestar organization id (first get that id from search)
    Guidestar.OrgDetail detail = gs.orgDetail( 8424440 );

    // perform 501c3 charity check based on EIN
    Guidestar.CharityCheck cc = gs.charityCheck('94-3347800');


The package includes a custom setting where you can store your API credentials. This way, you won't have to pass them in when you initialize the api class.

You can install the package into a Salesforce instance using the following URL:
  [https://githubsfdeploy.herokuapp.com/?owner=SalesforceFoundation&repo=apex-guidestar](https://githubsfdeploy.herokuapp.com/?owner=SalesforceFoundation&repo=apex-guidestar)


Comments and contributions are welcome!
