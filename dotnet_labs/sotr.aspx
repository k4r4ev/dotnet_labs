<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="sotr.aspx.cs" Inherits="LAB_11_pro.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:responsibilitiesConnectionString %>" 
        DeleteCommand="DELETE FROM sotr WHERE kod_sotr = ?" 
        InsertCommand="INSERT INTO sotr (kod_sotr, familia, name, otchestvo, oklad) VALUES (?, ?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:responsibilitiesConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM sotr" 
        UpdateCommand="UPDATE sotr SET familia = ?, name = ?, otchestvo = ?, oklad = ? WHERE kod_sotr = ?">
        <DeleteParameters>
            <asp:Parameter Name="kod_sotr" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            
                    <asp:Parameter Name="kod_sotr" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox1" Name="familia" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="otchestvo" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="oklad" PropertyName="Text" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="familia" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="otchestvo" Type="String" />
            <asp:Parameter Name="oklad" Type="Int32" />
            <asp:Parameter Name="kod_sotr" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="kod_sotr" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="kod_sotr" HeaderText="kod_sotr" InsertVisible="False" ReadOnly="True" SortExpression="kod_sotr" />
            <asp:BoundField DataField="familia" HeaderText="familia" SortExpression="familia" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="otchestvo" HeaderText="otchestvo" SortExpression="otchestvo" />
            <asp:BoundField DataField="oklad" HeaderText="oklad" SortExpression="oklad" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Width="70px"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Width="70px"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" Width="70px"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" Width="70px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="insert" Width="70px" />
</asp:Content>
