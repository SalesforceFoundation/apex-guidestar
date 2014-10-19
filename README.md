apex-guidestar
==============

Salesforce.com Apex integration with the [Guidestar API](https://data.guidestar.org/) - supports search, detail, and charity check for [Guidestar's extensive database](http://www.guidestar.org/) of US nonprofit organizations.

Read all about the Guidestar API at [data.guidestar.org](https://data.guidestar.org/). 

Usage:

	// initialize the api class using Guidestar API keys (Search, CharityCheck, and Detail API keys)
    Guidestar gs = new Guidestar('123abcdefg123','123abcdefg123','123abcdefg123');    

    // initialize the api class with Guidestar username and password
    Guidestar gs = new Guidestar('somebody@example.com','password');    

    // initialize the api class using credentials stored in custom settings
    Guidestar gs = new Guidestar();    

    // search for an org by name
    Guidestar.OrgSearch result = gs.orgSearch('Salesforce');

    // search for an org by EIN - can also search by name, city, state, zip, nteecode, or keyword
    Guidestar.OrgSearch result = gs.orgSearch('94-3347800', 'ein');

    // search for an org by zip code, retrieving the first page of 25 results
    Guidestar.OrgSearch result = gs.orgSearch('98101', 'zip', 1, 25);

    // search for an org using a custom Lucene query
    Guidestar.OrgSearch result = gs.orgSearch('city:"San Francisco" AND state:"CA" AND nteecode:"S02"', null, 1, 25);

    // perform 501c3 charity check based on EIN
    Guidestar.CharityCheck cc = gs.charityCheck('94-3347800');

    // retrieve full organization detail for a guidestar organization id (first get that id from search)
    Guidestar.OrgDetail detail = gs.orgDetail( 8424440 );

    // get an organization id and then retrieve full Exchange API data
    GuidestarExchange gsex = new GuidestarExchange();
    Guidestar.OrgSearch result = gsex.orgSearch('94-3347800', 'ein');
    Integer guidestarOrgId = result.hits[0].organization_id;
    GuidestarExchange.OrgExchange exchange = gsex.orgExchange( guidestarOrgId );

The package includes a custom setting where you can store your API credentials. This way, you won't have to pass them in when you initialize the api class. For better security, use API keys rather than username and password.

You can install the package into a Salesforce instance using the following URL:
  [https://githubsfdeploy.herokuapp.com/?owner=SalesforceFoundation&repo=apex-guidestar](https://githubsfdeploy.herokuapp.com/?owner=SalesforceFoundation&repo=apex-guidestar)


Comments and contributions are welcome!
