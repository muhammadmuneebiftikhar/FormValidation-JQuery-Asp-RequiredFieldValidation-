<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginTextBoxValidation.aspx.cs" Inherits="FormValidation.LoginTextBoxValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtName" runat="server" placeholder="Please Enter Your Name :"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredTextName" runat="server" ErrorMessage="Please Enter Your Name." ControlToValidate="txtName" ForeColor="#ff0000"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Please Enter Your Email :"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredTextEmail" runat="server" ErrorMessage="Please Enter Your Valid Email." ControlToValidate="txtEmail" ForeColor="#ff0000"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionTextEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Your Valid Email abc@gmail.com." ForeCode="#ff0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="txtPassword" runat="server" placeholder="Please Enter Your Password :"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredtxtPassword" runat="server" ControlToValidate="txtPassword" ForeColor="#ff0000" ErrorMessage="Enter Your Password."></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionTextPassword" ControlToValidate="txtPassword" ForeColor="#ff0000" runat="server" ErrorMessage="Enter 8 Character Password" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    </form>
</body>
</html>
