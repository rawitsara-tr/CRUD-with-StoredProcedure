<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD_with_SP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table class="nav-justified">
        <tr>
            <td colspan="2" style="font-size: x-large; font-weight: bold">CRUD Operation with Stored Procedure</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 291px">&nbsp;</td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 291px">
                <asp:Label ID="Label1" runat="server" Text="Product ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Small" Width="200px"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" Text="Search" OnClick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 291px">
                <asp:Label ID="Label2" runat="server" Text="Item Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Small" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 291px">
                <asp:Label ID="Label3" runat="server" Text="Specification"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Small" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 291px; height: 22px">
                <asp:Label ID="Label4" runat="server" Text="Unit"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Small" Width="200px">
                    <asp:ListItem>PCS</asp:ListItem>
                    <asp:ListItem>KG</asp:ListItem>
                    <asp:ListItem>DZ</asp:ListItem>
                    <asp:ListItem>Ltr</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 291px">
                <asp:Label ID="Label5" runat="server" Text="Status"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Running</asp:ListItem>
                    <asp:ListItem>Unused</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 291px">
                <asp:Label ID="Label6" runat="server" Text="Creation Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="X-Small" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 291px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 291px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" OnClientClick="return confirm('Are you sure to delete');" />
                <asp:Button ID="Button5" runat="server" Text="Load" OnClick="Button5_Click" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 291px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="1069px">
                </asp:GridView>
            </td>
        </tr>
    </table>

</asp:Content>
