<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            LINE ID<br />
            <asp:TextBox ID="IDline" runat="server"></asp:TextBox>
            <br />
            ชื่อ<br />
            <asp:TextBox ID="TextBoxFname" CssClass="form-control" runat="server" Width="195px" ControlToValidate="TextBoxFname"></asp:TextBox>

            <br />
            นามสกุล<br />
            <asp:TextBox ID="TextBoxLname" CssClass="form-control" runat="server" Width="195px"></asp:TextBox>

            <br />
            E-mail<br />
            <asp:TextBox ID="txtEmail" runat="server" Width="195px"></asp:TextBox>

            <br />
            เบอร์โทรศัพท์<br />
            <asp:TextBox ID="TextBoxPno" CssClass="form-control" runat="server" Width="196px"></asp:TextBox>

            <br />
            ที่อยู่<br />
            <asp:TextBox ID="TextBoxadd" CssClass="form-control" runat="server" Height="38px" Width="247px"></asp:TextBox>

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="ยกเลิก" />

            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            
            <asp:Button ID="Button2" runat="server" Text="ยืนยัน" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
