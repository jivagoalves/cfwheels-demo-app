<cfcomponent extends="tests.Test" output="false">
  <cffunction name="test_title">
    <!--- setup some default params for the tests --->
    <cfset loc.params = {controller="pages", action="home"}>

    <!--- create an instance of the controller --->
    <cfset loc.controller = controller("pages", loc.params)>

    <!--- process the create action of the controller --->
    <cfset loc.controller.$processAction()>

    <!--- get copy of the code the view generated --->
    <cfset loc.response = loc.controller.response()>

    <!--- make sure the flashmessage was displayed  --->
    <cfset loc.message = 'Welcome'>
    <cfset assert('loc.response contains loc.message')>
  </cffunction>
</cfcomponent>
