<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQueryFormValidation.aspx.cs" Inherits="FormValidation.JQueryFormValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="Name">Name:</label>
                <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="email">Email address:</label>
                <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <asp:TextBox ID="password" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="Phone">Phone Number:</label>
                <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="CNIC">CNIC:</label>
                <asp:TextBox ID="CNIC" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        
            <asp:Button ID="btnSubmit" runat="server" Text="submit" OnClick="btnSubmit_Click" />
        </form>
    </div>

    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script type="text/javascript">
        $.validator.addMethod('CNIC', function (value) {
            return /^(\d{5}-\d{7}-\d{1})$/.test(value);
        }, "Please enter you CNIC in this format 12345-1234567-1");

        $.validator.addMethod('phone', function (value) {
            return /^(\d{11}) $/.test(value);
        }, "Please Enter your phone number in this format 0300-1234567");

        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    name: "required",
                    email: "required email",
                    password: {
                        required: true,
                        minlength: 8
                    },
                    CNIC: "required CNIC",
                    phone: "required Phone",
                },
                    messages: {
                        name: "Please enter your full name",
                        email: "Please enter a valid email address",
                        password: "Please enter 8 character long password"
                    }
            });
        });
    </script>
</body>
</html>
