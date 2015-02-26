<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>getJSON-Demo</title>
    <style>
        div{background-color: springgreen}
    </style>
<script type="application/javascript">
$(document).ready(function(){
    $("button").click(function(){
        %{--$.getJSON("${resource(file: "demoGetJson.json")}", function(result){--}%
        $.getJSON("renderJSON", function(result){
            $.each(result, function(key, value){
                $("#getJson").append(key+"="+ value + "<br>");
            });
        });
    });
});
</script>
</head>

<body>
<button>Get JSON data Using $.getJSON</button>
<br><br>
<div id="getJson"></div>
</body>
</html>