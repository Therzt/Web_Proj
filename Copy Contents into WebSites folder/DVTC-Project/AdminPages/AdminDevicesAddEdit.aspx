<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDevicesAddEdit.aspx.cs" Inherits="AdminPages_AdminDevices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/DVTCStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <h1>Device Admin DVT&C</h1>
        <h1>Add/Edit Inventory</h1>
        <div>
            <div class="auto-style3">
        <br />
            <span class="auto-style4"><strong>Navigation:&nbsp;&nbsp;&nbsp; </strong></span>
            <asp:Button ID="SearchInventoryButton" runat="server" Height="32px" PostBackUrl="~/CommonPages/SearchInventory.aspx" Text="Search" CssClass="button" />
            <br />
        <br />
                *Note: All fields below are required&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        </div>
        <asp:DetailsView ID="DetailsViewAddDevice" runat="server" AutoGenerateRows="False" DefaultMode="Insert" Height="16px" HorizontalAlign="Center" Width="446px" DataKeyNames="INVENTORY_ID" DataSourceID="SqlDataSourceInventory" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="INVENTORY_ID" HeaderText="INVENTORY ID" InsertVisible="False" ReadOnly="True" SortExpression="INVENTORY_ID" />
                <asp:BoundField DataField="OEM" HeaderText="OEM" SortExpression="OEM" ValidateRequestMode="Enabled" />
                <asp:BoundField DataField="MODEL" HeaderText="MODEL" SortExpression="MODEL" />
                <asp:BoundField DataField="MEID" HeaderText="MEID" SortExpression="MEID" />
                <asp:BoundField DataField="HW_TYPE" HeaderText="HW TYPE" SortExpression="HW_TYPE" />
                <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                <asp:BoundField DataField="OWNER" HeaderText="OWNER" SortExpression="OWNER" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <br />
        <div class="auto-style3">
        <asp:GridView ID="GridViewInventory" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="mGrid" PagerStyle-CssClass="pgr" DataKeyNames="INVENTORY_ID" DataSourceID="SqlDataSourceInventory" HorizontalAlign="Center" EnableSortingAndPagingCallbacks="True" >
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="INVENTORY_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="INVENTORY_ID" />
                <asp:BoundField DataField="OEM" HeaderText="OEM" SortExpression="OEM" />
                <asp:BoundField DataField="MODEL" HeaderText="MODEL" SortExpression="MODEL" />
                <asp:BoundField DataField="MEID" HeaderText="MEID" SortExpression="MEID" />
                <asp:BoundField DataField="HW_TYPE" HeaderText="HW TYPE" SortExpression="HW_TYPE" />
                <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                <asp:BoundField DataField="DATE_ADDED" HeaderText="DATE ADDED" SortExpression="DATE_ADDED" ReadOnly="True" />
                <asp:BoundField DataField="DATE_ARCHIVED" HeaderText="DATE ARCHIVED" SortExpression="DATE_ARCHIVED" ReadOnly="True" />
                <asp:BoundField DataField="CHECKED_IN_DATE" HeaderText="CHECKED IN DATE" SortExpression="CHECKED_IN_DATE" ReadOnly="True" />
                <asp:BoundField DataField="CHECKED_OUT_DATE" HeaderText="CHECKED OUT DATE" SortExpression="CHECKED_OUT_DATE" ReadOnly="True" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                <asp:BoundField DataField="OWNER" HeaderText="OWNER" SortExpression="OWNER" />
            </Columns>
            <PagerStyle CssClass="pgr" />
        </asp:GridView>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceInventory" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" DeleteCommand="DELETE FROM [Devices] WHERE [INVENTORY_ID] = @original_INVENTORY_ID AND [OEM] = @original_OEM AND [MODEL] = @original_MODEL AND [MEID] = @original_MEID AND [HW_TYPE] = @original_HW_TYPE AND [SKU] = @original_SKU AND (([DATE_ADDED] = @original_DATE_ADDED) OR ([DATE_ADDED] IS NULL AND @original_DATE_ADDED IS NULL)) AND (([DATE_ARCHIVED] = @original_DATE_ARCHIVED) OR ([DATE_ARCHIVED] IS NULL AND @original_DATE_ARCHIVED IS NULL)) AND (([CHECKED_IN_DATE] = @original_CHECKED_IN_DATE) OR ([CHECKED_IN_DATE] IS NULL AND @original_CHECKED_IN_DATE IS NULL)) AND (([CHECKED_OUT_DATE] = @original_CHECKED_OUT_DATE) OR ([CHECKED_OUT_DATE] IS NULL AND @original_CHECKED_OUT_DATE IS NULL)) AND [STATUS] = @original_STATUS AND [OWNER] = @original_OWNER" InsertCommand="INSERT INTO [Devices] ([OEM], [MODEL], [MEID], [HW_TYPE], [SKU], [DATE_ADDED], [DATE_ARCHIVED], [CHECKED_IN_DATE], [CHECKED_OUT_DATE], [STATUS], [OWNER]) VALUES (@OEM, @MODEL, @MEID, @HW_TYPE, @SKU, @DATE_ADDED, @DATE_ARCHIVED, @CHECKED_IN_DATE, @CHECKED_OUT_DATE, @STATUS, @OWNER)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Devices]" UpdateCommand="UPDATE [Devices] SET [OEM] = @OEM, [MODEL] = @MODEL, [MEID] = @MEID, [HW_TYPE] = @HW_TYPE, [SKU] = @SKU, [DATE_ADDED] = @DATE_ADDED, [DATE_ARCHIVED] = @DATE_ARCHIVED, [CHECKED_IN_DATE] = @CHECKED_IN_DATE, [CHECKED_OUT_DATE] = @CHECKED_OUT_DATE, [STATUS] = @STATUS, [OWNER] = @OWNER WHERE [INVENTORY_ID] = @original_INVENTORY_ID AND [OEM] = @original_OEM AND [MODEL] = @original_MODEL AND [MEID] = @original_MEID AND [HW_TYPE] = @original_HW_TYPE AND [SKU] = @original_SKU AND (([DATE_ADDED] = @original_DATE_ADDED) OR ([DATE_ADDED] IS NULL AND @original_DATE_ADDED IS NULL)) AND (([DATE_ARCHIVED] = @original_DATE_ARCHIVED) OR ([DATE_ARCHIVED] IS NULL AND @original_DATE_ARCHIVED IS NULL)) AND (([CHECKED_IN_DATE] = @original_CHECKED_IN_DATE) OR ([CHECKED_IN_DATE] IS NULL AND @original_CHECKED_IN_DATE IS NULL)) AND (([CHECKED_OUT_DATE] = @original_CHECKED_OUT_DATE) OR ([CHECKED_OUT_DATE] IS NULL AND @original_CHECKED_OUT_DATE IS NULL)) AND [STATUS] = @original_STATUS AND [OWNER] = @original_OWNER">
            <DeleteParameters>
                <asp:Parameter Name="original_INVENTORY_ID" Type="Int32" />
                <asp:Parameter Name="original_OEM" Type="String" />
                <asp:Parameter Name="original_MODEL" Type="String" />
                <asp:Parameter Name="original_MEID" Type="String" />
                <asp:Parameter Name="original_HW_TYPE" Type="String" />
                <asp:Parameter Name="original_SKU" Type="String" />
                <asp:Parameter DbType="Date" Name="original_DATE_ADDED" />
                <asp:Parameter DbType="Date" Name="original_DATE_ARCHIVED" />
                <asp:Parameter DbType="Date" Name="original_CHECKED_IN_DATE" />
                <asp:Parameter DbType="Date" Name="original_CHECKED_OUT_DATE" />
                <asp:Parameter Name="original_STATUS" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OEM" Type="String" />
                <asp:Parameter Name="MODEL" Type="String" />
                <asp:Parameter Name="MEID" Type="String" />
                <asp:Parameter Name="HW_TYPE" Type="String" />
                <asp:Parameter Name="SKU" Type="String" />
                <asp:Parameter Name="DATE_ADDED" DbType="Date" />
                <asp:Parameter DbType="Date" Name="DATE_ARCHIVED" />
                <asp:Parameter DbType="Date" Name="CHECKED_IN_DATE" />
                <asp:Parameter DbType="Date" Name="CHECKED_OUT_DATE" />
                <asp:Parameter Name="STATUS" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OEM" Type="String" />
                <asp:Parameter Name="MODEL" Type="String" />
                <asp:Parameter Name="MEID" Type="String" />
                <asp:Parameter Name="HW_TYPE" Type="String" />
                <asp:Parameter Name="SKU" Type="String" />
                <asp:Parameter DbType="Date" Name="DATE_ADDED" />
                <asp:Parameter DbType="Date" Name="DATE_ARCHIVED" />
                <asp:Parameter DbType="Date" Name="CHECKED_IN_DATE" />
                <asp:Parameter DbType="Date" Name="CHECKED_OUT_DATE" />
                <asp:Parameter Name="STATUS" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="original_INVENTORY_ID" Type="Int32" />
                <asp:Parameter Name="original_OEM" Type="String" />
                <asp:Parameter Name="original_MODEL" Type="String" />
                <asp:Parameter Name="original_MEID" Type="String" />
                <asp:Parameter Name="original_HW_TYPE" Type="String" />
                <asp:Parameter Name="original_SKU" Type="String" />
                <asp:Parameter DbType="Date" Name="original_DATE_ADDED" />
                <asp:Parameter DbType="Date" Name="original_DATE_ARCHIVED" />
                <asp:Parameter DbType="Date" Name="original_CHECKED_IN_DATE" />
                <asp:Parameter DbType="Date" Name="original_CHECKED_OUT_DATE" />
                <asp:Parameter Name="original_STATUS" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
