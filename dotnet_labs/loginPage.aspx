<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="LAB_11_pro.loginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Выполнить вход</h2>
    <p>
        <asp:Label ID="Label1" runat="server" Text="User" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Pass" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="ButtonConnection_Click" Text="Enter" />
    </p>
</asp:Content>
