

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Get-Script-Demo</title>
   <script type="application/javascript">
    $(document).ready(function(){
      $("#getScript").click(function(){
        $.getScript("${resource(dir: "js",file: "demo_ajax_script.js")}",function(data,textStatus,xhr){
//            console.log(data);
//            console.log(textStatus);
//            console.log(xhr.status);
        });
       });
    });
  </script>
</head>
<body>
<button id="getScript">Use Ajax to get and then run a JavaScript</button>
<a id="scriptSource" href="${resource(dir: 'js',file: 'demo_ajax_script.js')}" style="display: none"></a>
</body>
</html>