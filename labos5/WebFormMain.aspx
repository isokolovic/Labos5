<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMain.aspx.cs" Inherits="labos5.WebFormMain" %>

<%@ Register Src="~/Login.ascx" TagPrefix="uc1" TagName="Login" %>


<!DOCTY<uc1:Login runat="server" id="Login" />PE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <uc1:Login ID="Login1" runat="server" />
    </form>
</body>
</html>
