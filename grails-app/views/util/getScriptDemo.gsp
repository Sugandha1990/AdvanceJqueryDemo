

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Get-Script-Demo</title>
   <script type="application/javascript">
    $(document).ready(function(){
      $("button").click(function(){
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
<button>Use Ajax to get and then run a JavaScript</button>
</body>
</html>