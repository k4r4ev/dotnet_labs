<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="works.aspx.cs" Inherits="LAB_11_pro.sotr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:responsibilitiesConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:responsibilitiesConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM sotr"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString="<%$ ConnectionStrings:responsibilitiesConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:responsibilitiesConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM work_types">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:responsibilitiesConnectionString %>" 
        DeleteCommand="DELETE FROM works WHERE kod_sotr = ?, kod_type = ?" 
        InsertCommand="INSERT INTO works (kod_sotr, kod_type, start_date, finish_date) VALUES (?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:responsibilitiesConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM works">
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3" Height="26px" Width="0px">
        <Fields>
            <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
            <asp:TemplateField HeaderText="sotrudnik">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="familia" DataValueField="kod_sotr" SelectedValue='<%# Bind("kod_sotr") %>'>
                    </asp:DropDownList>
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="type_of_work">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="opisanie" DataValueField="kod_type" SelectedValue='<%# Bind("kod_type") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="start">
                <ItemTemplate>
                    <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("start_date") %>'></asp:Calendar>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="finish">
                <ItemTemplate>
                    <asp:Calendar ID="Calendar2" runat="server" SelectedDate='<%# Bind("finish_date") %>'></asp:Calendar>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="kod_sotr" HeaderText="kod_sotr" InsertVisible="False" SortExpression="kod_sotr" />
            <asp:BoundField DataField="kod_type" HeaderText="kod_type" SortExpression="kod_type" />
            <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date" />
            <asp:BoundField DataField="finish_date" HeaderText="finish_date" SortExpression="finish_date" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Экспортировать" />
</asp:Content>
