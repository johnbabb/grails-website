<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Web Site</title>
    <meta name="layout" content="admin"/>
</head>

<body>

<h1 class="page-header">
    Add Web Site
    <span class="pull-right">
        <g:link class="btn" action="list">Web Site List</g:link>
    </span>
</h1>

<flash:message flash="${flash}" bean="${webSiteInstance}"/>

<g:hasErrors bean="${webSiteInstance}">
    <div class="alert alert-error">
        <g:renderErrors bean="${webSiteInstance}" as="list"/>
    </div>
</g:hasErrors>

<g:uploadForm action="save" class="form-horizontal">
    <fieldset>

        <g:render template="form" />

        <div class="form-actions">
            <g:submitButton name="create" class="btn btn-primary" value="Create" />
            <g:link class="btn" action="list">Cancel</g:link>
        </div>

    </fieldset>

</g:uploadForm>

</body>
</html>