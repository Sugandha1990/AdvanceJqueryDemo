<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
    <g:render template="includes"/>
</head>

<body>
<p>Date: <input type="text" id="datepicker"></p>
<script>
    $(function() {
        $( "#datepicker" ).datepicker();
    });
</script>
</body>
</html>
