<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Template1.aspx.vb" Inherits="JqueryTemplate2.Template1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script src="../Scripts/jquery-1.4.3.min.js"></script>
    <script src="../Scripts/jQuery.tmpl.min.js"></script>
</head>
<body>
    <input type="button" id="miboton" value="probar" onclick="alert('hola mundo');" />
    <div id="content2"></div>
    <div id="content"></div>
    <script id="itemList" type="text/x-jQuery-tmpl">
      <div>
        <h2>${titulo}</h2>
        ${descripcion}
     </div>
    </script>
</body>

<script type="text/javascript">
   

    $(document).ready(function () {

        var data = {
            titulo: 'Esto se utiliza como titulo',
            descripcion: 'Esto podría ser una descripción de un producto o lo que se te ocurra'
        };

        // Create the variable with the HTML markup
        var myTemplate = '<h1>${titulo} - </h1><span><p>${descripcion}</p></span><input type="button" id="idbutton2" value="alert" onclick="alert(\'hola mundo2\');" />';

        // Store it as a named template
        $.template("myTemplate", myTemplate);


        $('#miboton').bind('click', function () {
            // Use the template
            $.tmpl("myTemplate", data).appendTo("#content2");
            $('#itemList').tmpl(data).appendTo('#content');
        });

        $('#idbutton2').bind('click', function () {
            console.log('click');
        });

    });

</script>
</html>
