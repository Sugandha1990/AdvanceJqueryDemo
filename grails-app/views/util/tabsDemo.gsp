<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">

</head>

<body>

<!-- Tabs -->
<h2>Tabs</h2>
<div id="tabs">
    <ul>
        <li><a href="#tabs-1">First</a></li>
        <li><a href="#tabs-2">Second</a></li>
        <li><a href="#tabs-3">Third</a></li>
    </ul>
    <div id="tabs-1">First Tab</div>
    <div id="tabs-2">Second Tab</div>
    <div id="tabs-3">Third Tab</div>
</div>
<script>
    $( "#tabs" ).tabs();
</script>
</body>
</html>
