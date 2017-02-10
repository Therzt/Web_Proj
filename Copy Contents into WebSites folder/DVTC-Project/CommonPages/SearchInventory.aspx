<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchInventory.aspx.cs" Inherits="CommonPages_SearchInventory" %>

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
    <h1>DVT&C Search Inventory</h1>
    <form id="form1" runat="server">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="MEIDLabel" runat="server" style="text-align: left" Text="Scan MEID barcode on device"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="MEIDTextBox" runat="server" Font-Bold="True" Font-Names="Rockwell" Font-Size="Medium" Font-Underline="False" Height="21px" style="text-align: center; margin-left: 0px" Width="311px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="button"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="AddEditDevicesButton" runat="server" PostBackUrl="~/AdminPages/AdminDevicesAddEdit.aspx" Text="Return to Add/Edit" CssClass="button" />
            &nbsp;<asp:GridView ID="UserInventoryGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="mGrid" PagerStyle-CssClass="pgr" DataSourceID="MEIDSearchSqlDataSource" style="text-align: center; margin-left: 29px" Width="1196px" DataKeyNames="INVENTORY_ID" HorizontalAlign="Center" EnableSortingAndPagingCallbacks="True">
            <Columns>
                <asp:BoundField DataField="INVENTORY_ID" HeaderText="INVENTORY ID" InsertVisible="False" ReadOnly="True" SortExpression="INVENTORY_ID" />
                <asp:BoundField DataField="OEM" HeaderText="OEM" SortExpression="OEM" />
                <asp:BoundField DataField="MODEL" HeaderText="MODEL" SortExpression="MODEL" />
                <asp:BoundField DataField="MEID" HeaderText="MEID" SortExpression="MEID" />
                <asp:BoundField DataField="HW_TYPE" HeaderText="HW TYPE" SortExpression="HW_TYPE" />
                <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                <asp:BoundField DataField="DATE_ADDED" HeaderText="DATE ADDED" SortExpression="DATE_ADDED" />
                <asp:BoundField DataField="DATE_ARCHIVED" HeaderText="DATE ARCHIVED" SortExpression="DATE_ARCHIVED" />
                <asp:BoundField DataField="CHECKED_IN_DATE" HeaderText="CHECKED IN DATE" SortExpression="CHECKED_IN_DATE" />
                <asp:BoundField DataField="CHECKED_OUT_DATE" HeaderText="CHECKED OUT DATE" SortExpression="CHECKED_OUT_DATE" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                <asp:BoundField DataField="OWNER" HeaderText="OWNER" SortExpression="OWNER" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="MEIDSearchSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT * FROM [Devices] WHERE ([MEID] = @MEID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="MEIDTextBox" Name="MEID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="OEMDropDownList" runat="server" AppendDataBoundItems="True"
             DataSourceID="OEMDropDownMenuSqlDataSource" DataTextField="OEM" DataValueField="OEM" CssClass="dropdown" Width="124px">
            <asp:ListItem Value="%">Choose OEM</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="OEMDropDownMenuSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT DISTINCT [OEM] FROM [Devices]"></asp:SqlDataSource>
        <asp:DropDownList ID="ModelDropDownList" runat="server" AppendDataBoundItems="True"
             DataSourceID="ModelDropDownMenuSqlDataSource" DataTextField="MODEL" DataValueField="MODEL" CssClass="dropdown" Width="124px">
            <asp:ListItem Value="%">Choose Model</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="ModelDropDownMenuSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT DISTINCT [MODEL] FROM [Devices]"></asp:SqlDataSource>
        <asp:DropDownList ID="HWTypeDropDownList" runat="server" DataSourceID="HWTypeDropDownMenuSqlDataSource" DataTextField="HW_TYPE" DataValueField="HW_TYPE" CssClass="dropdown" Width="124px" AppendDataBoundItems="True">
            <asp:ListItem Value="%">Choose HW Type</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="HWTypeDropDownMenuSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT DISTINCT [HW_TYPE] FROM [Devices]"></asp:SqlDataSource>
        <asp:DropDownList ID="SKUDropDownList" runat="server" DataSourceID="SKUDropDownMenuSqlDataSource" DataTextField="SKU" DataValueField="SKU" CssClass="dropdown" Width="124px" AppendDataBoundItems="True">
            <asp:ListItem Value="%">Choose SKU</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SKUDropDownMenuSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT DISTINCT [SKU] FROM [Devices]"></asp:SqlDataSource>
        <asp:DropDownList ID="OwnerDropDownList" runat="server" DataSourceID="OwnerDropDownMenuSqlDataSource" DataTextField="OWNER" DataValueField="OWNER" CssClass="dropdown" Width="124px" AppendDataBoundItems="True">
            <asp:ListItem Value="%">Choose Owner</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="OwnerDropDownMenuSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT DISTINCT [OWNER] FROM [Devices]"></asp:SqlDataSource>
        <asp:Button ID="FilterButton" runat="server" Text="Filter" CssClass="button"/>
&nbsp;<br />
        <asp:GridView ID="UserInventoryUsingDropDownsGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="mGrid" PagerStyle-CssClass="pgr" DataSourceID="InventoryGridViewSqlDataSource" style="text-align: center; margin-left: 29px" Width="1196px" HorizontalAlign="Center" DataKeyNames="INVENTORY_ID" EnableSortingAndPagingCallbacks="True">
            <Columns>
                <asp:BoundField DataField="INVENTORY_ID" HeaderText="INVENTORY ID" SortExpression="INVENTORY_ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="OEM" HeaderText="OEM" SortExpression="OEM" />
                <asp:BoundField DataField="MODEL" HeaderText="MODEL" SortExpression="MODEL" />
                <asp:BoundField DataField="MEID" HeaderText="MEID" SortExpression="MEID" />
                <asp:BoundField DataField="HW_TYPE" HeaderText="HW TYPE" SortExpression="HW_TYPE" />
                <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                <asp:BoundField DataField="DATE_ADDED" HeaderText="DATE ADDED" SortExpression="DATE_ADDED" />
                <asp:BoundField DataField="DATE_ARCHIVED" HeaderText="DATE ARCHIVED" SortExpression="DATE_ARCHIVED" />
                <asp:BoundField DataField="CHECKED_IN_DATE" HeaderText="CHECKED IN DATE" SortExpression="CHECKED_IN_DATE" />
                <asp:BoundField DataField="CHECKED_OUT_DATE" HeaderText="CHECKED OUT DATE" SortExpression="CHECKED_OUT_DATE" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                <asp:BoundField DataField="OWNER" HeaderText="OWNER" SortExpression="OWNER" />
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="InventoryGridViewSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Devices] WHERE ([OEM] = @OEM)">
            <SelectParameters>
                <asp:ControlParameter ControlID="OEMDropDownList" Name="OEM" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
