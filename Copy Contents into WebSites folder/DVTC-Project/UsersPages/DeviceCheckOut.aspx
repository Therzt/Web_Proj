<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeviceCheckOut.aspx.cs" Inherits="UsersPages_DeviceCheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/DVTCStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #form1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>DVT&C Device Check Out</h1>
    <form id="form1" runat="server">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="MEIDLabel" runat="server" style="text-align: left" Text="Scan MEID barcode on device"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="MEIDTextBox" runat="server" Font-Bold="True" Font-Names="Rockwell" Font-Size="Medium" Font-Underline="False" Height="21px" style="text-align: center; margin-left: 0px" Width="311px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="CheckOutButton" runat="server" Text="Check Out" CssClass="button" OnClick="CheckOutButton_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="CheckInButton" runat="server" Text="Check In" CssClass="button" OnClick="CheckInButton_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="SearchInventoryButton" runat="server" Height="32px" PostBackUrl="~/CommonPages/SearchInventory.aspx" Text="Search" CssClass="button" />
            <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="UpdateSuccessLabel" runat="server"></asp:Label>
        <asp:GridView ID="UserInventoryGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="mGrid" PagerStyle-CssClass="pgr" DataSourceID="CheckedOutDevicesSqlDataSource" style="text-align: center; margin-left: 29px" Width="1196px" DataKeyNames="INVENTORY_ID" HorizontalAlign="Center" EnableSortingAndPagingCallbacks="True">
            <Columns>
                <asp:BoundField DataField="INVENTORY_ID" HeaderText="INVENTORY ID" InsertVisible="False" ReadOnly="True" SortExpression="INVENTORY_ID" />
                <asp:BoundField DataField="OEM" HeaderText="OEM" SortExpression="OEM" />
                <asp:BoundField DataField="MODEL" HeaderText="MODEL" SortExpression="MODEL" />
                <asp:BoundField DataField="MEID" HeaderText="MEID" SortExpression="MEID" />
                <asp:BoundField DataField="HW_TYPE" HeaderText="HW TYPE" SortExpression="HW_TYPE" />
                <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                <asp:BoundField DataField="CHECKED_IN_DATE" HeaderText="CHECKED IN DATE" SortExpression="CHECKED_IN_DATE" />
                <asp:BoundField DataField="CHECKED_OUT_DATE" HeaderText="CHECKED OUT DATE" SortExpression="CHECKED_OUT_DATE" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                <asp:BoundField DataField="OWNER" HeaderText="OWNER" SortExpression="OWNER" />
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="CheckedOutDevicesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT INVENTORY_ID AS Expr1, OEM AS Expr2, MODEL AS Expr3, MEID AS Expr4, HW_TYPE AS Expr5, SKU AS Expr6, DATE_ADDED AS Expr7, DATE_ARCHIVED AS Expr8, CHECKED_IN_DATE AS Expr9, CHECKED_OUT_DATE AS Expr10, STATUS AS Expr11, OWNER AS Expr12, INVENTORY_ID, OEM, MODEL, MEID, HW_TYPE, SKU, DATE_ADDED, DATE_ARCHIVED, CHECKED_IN_DATE, CHECKED_OUT_DATE, STATUS, OWNER FROM Devices WHERE (OWNER = 'user')" UpdateCommand="UPDATE Devices SET CHECKED_OUT_DATE = GETDATE() WHERE (MEID = N'MEIDTextBox')">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="DeviceCheckOutUpdateDBSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT INVENTORY_ID, OEM, MODEL, MEID, HW_TYPE, SKU, DATE_ADDED, DATE_ARCHIVED, CHECKED_IN_DATE, CHECKED_OUT_DATE, STATUS, OWNER FROM Devices" UpdateCommand="UPDATE Devices SET CHECKED_OUT_DATE = GETDATE(), STATUS = N'OUT', OWNER = N'USER' WHERE (MEID = N'MEIDTextBox')"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DeviceCheckInUpdateDBSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT INVENTORY_ID, OEM, MODEL, MEID, HW_TYPE, SKU, DATE_ADDED, DATE_ARCHIVED, CHECKED_IN_DATE, CHECKED_OUT_DATE, STATUS, OWNER FROM Devices" UpdateCommand="UPDATE Devices SET CHECKED_IN_DATE = GETDATE(), STATUS = N'IN', OWNER = N'DVTC Admin' WHERE (MEID = N'MEIDTextBox')">
        </asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
