﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="labos5.Login" %>
<asp:Panel ID="PanelLogIn" runat="server">
    <h1>Welcome!</h1>
    <h2>Please enter your username and password to login.</h2>
    <asp:Label ID="Label1" runat="server" Text="Username: " BorderStyle="None"></asp:Label>
    <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
</asp:Panel>
<asp:Panel ID="PanelError" runat="server" Visible="False">
    <asp:Label ID="Label2" runat="server" Text="Password" BorderStyle="None"></asp:Label>
    <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
    <h3>Username or password not valid</h3>
    <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
</asp:Panel>
<asp:Panel ID="PanelDisplay" runat="server" Visible="False">
    <asp:GridView ID="GridViewData" runat="server">
    </asp:GridView>
</asp:Panel>

