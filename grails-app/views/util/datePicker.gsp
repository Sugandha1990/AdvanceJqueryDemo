<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<p>Date: <input type="text" id="datepicker"></p>
<br/>
<button id="openDialog" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button">Open Dialog
    </button>
    <div id="dialog" title="Basic dialog" style="display: none;">
        <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
    </div>
    <script>
        $(document).ready(function () {
            $('#openDialog').on('click', function () {
                $("#dialog").dialog();
            })
            $("#datepicker").datepicker();
        });
    </script>
</body>
</html>
