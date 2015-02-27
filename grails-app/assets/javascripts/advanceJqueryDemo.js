/**
 * Created by intelligrape on 27/2/15.
 */
$(document).ready(function(){

   // Validation Plugin Demo

    $('#userForm').validate({
        rules: {
            name: {
                required: true
            },
            age: {
                required: true,
                digits:true,
                remote:"validateAge"
            },
            salary: {
                required: true,
                digits:true
            }
        },
        messages:{
            name: {
                required: "Please enter your name."
            },
            age: {
                required: "Please enter your age.",
                digits:"Please enter valid age.",
                remote:"Please enter valid age."
            },
            salary: {
                required:"Please anter your salary.",
                digits:"Please enter valid salary."
            }
        },
        submitHandler: function () {
            $.ajax({
                url: "createUser",
                data: $('#userForm').serialize()
            }).done(function (data) {
                    alert('Submitted.')
                });
        }
    });

    //Call Back Demo

    // Below one showing async behavior

    $("#hideWithoutCallBAck").click(function(){
        $("p").hide(2000);
        alert("The paragraph is now hidden");
    });


    // achieving sync behavior using call back

    $("#hideWithCallBAck").click(function(){
        $("p").hide(2000, function(){
            alert("The paragraph is now hidden");
        });
    });


    $("#each").click(function(){
        $.each(["Hello","World"],function(index,value){
            $('#eachCallBack').append("<div>"+value+" at index "+index+"</div><br>");
        });

    });


    //JSON demo

    var jsonObject = '{"name":"John Johnson","street":"Oslo West 16","phone":"555 1234567"}';
    var obj = JSON.parse(jsonObject);
    $("#demoJsonObject").append(obj.name + "<br>" + obj.street + "<br>" + obj.phone);


    var jsonArray='[100,200,300,400,500]';
    var obj2 = JSON.parse(jsonArray);
    $.each(obj2,function(index,value){
        $("#demoJsonArray").append(value+"<br>");
    });


    //Ajax Demo

    var url = "randomName";
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

    //Get JSON DEMO

    $("#getJson").click(function(){
//        $.getJSON("${resource(file: "demoGetJson.json")}", function(result){
            $.getJSON("renderJSON", function(result){
                $.each(result, function(key, value){
                    $("#getJsonResult").append(key+"="+ value + "<br>");
                });
            });
        });

    // Get Script Demo

    $("#getScript").click(function(){
        var scriptSource=$("#scriptSource").attr("href");
        $.getScript(scriptSource,function(data,textStatus,xhr){
//            console.log(data);
//            console.log(textStatus);
//            console.log(xhr.status);
        });
    });


});