<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ajax-Demo</title>
    <meta name="layout" content="main">
    <style type="text/css">
        div{background-color: springgreen}
    </style>
</head>

<body>
<div id="errorAlert" class="alert alert-block alert-danger" style="display: none">
    <span class="errorMessage"></span>
</div>
<br/>
<div id="name"></div>
<br>
<a href="javascript:void (0)" id="showNameLink" >Show Random Name</a>
<br/>
<a href="javascript:void (0)" id="showNameLink2">Show Random Name (error)</a>
<br/>
<a href="javascript:void (0)" id="showNameLink3">Show Random Name($.get)</a>
<br/>
<a href="javascript:void (0)" id="showNameLink4">Show Random Name($.load)</a>
<br/>
<a href="javascript:void (0)" id="showNameLink5">Show Random Name($.post)</a>

<script type="text/javascript">
    var url = "${createLink(controller: 'util',action: 'randomName')}";
    $("#showNameLink").click( function () {
        var $request = jQuery.ajax({
            url: url,
            data:{isAllowed:true},
            method: 'get'
        });
        $request.done(successCallback);
        $request.fail(failureCallback);
    });

    $("#showNameLink2").click( function () {
        var $request = jQuery.ajax({
            url: url,
            data:{isAllowed:false},
            method: 'get'
        });
        $request.done(successCallback);
        $request.fail(failureCallback);
    });

    $("#showNameLink3").click( function () {
      $.get( url,{isAllowed:true}, successCallback)
    });

    $("#showNameLink4").click( function () {
        $("#name").load(url,$.param({isAllowed:true}));
    });

    $("#showNameLink5").click( function () {
        $.post(url,{isAllowed:true}, successCallback);
    });
    function successCallback(data) {
        if (data.status == false) {
            var errorMessage = data.errorMessage;
            showErrorAlert(errorMessage);
        } else {
            $("#name").html(data);
        }
    }
    function failureCallback(jqXHR, textStatus) {
        alert("Some error has occurred.");
        console.log('Error in request: '+jqXHR.statusText);
        console.log('Error in request status: '+textStatus);
    }
    function showErrorAlert(errorMessage) {
        alert(errorMessage);
    }
</script>

</body>
</html>