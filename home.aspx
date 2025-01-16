<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="product.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 814px;
            height: 191px;
            border-block:thick;
            text-align:center;
        }
        body {
    font-family: Arial, sans-serif;
    background-color: #f0f2f5;
}

h2 {
    text-align: center;
    color: #333;
}

.form-container {
    width: 400px;
    margin: 50px auto;
    background-color: #fff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.input-box {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
}

.submit-button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 18px;
    cursor: pointer;
}

    .submit-button:hover {
        background-color: #0056b3;
    }

.error {
    color: red;
    font-size: 12px;
    margin-bottom: 10px;
    display: block;
}

label {
    display: block;
    margin-bottom: 5px;
    color: #333;
}

.message {
    font-size: 16px;
    margin-top: 20px;
    display: block;
}

.success {
    color: green;
}

.error {
    color: red;
}

        .auto-style4 {
            width: 135px;
            height: 110px;
            margin-left: 43px;
            margin-right: 0px;
        }
        .auto-style5 {
            color: red;
            font-size: 12px;
            display: block;
            margin-bottom: 10px;
        }
        .auto-style6 {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        
        
    </style>
</head>
<body style="width: 816px; height: 433px">
    <form id="form1" runat="server" border="thick">
        <div class="auto-style3">
            <h1>Login Form<img alt="Login - Free user icons" class="auto-style4" src="https://cdn-icons-png.flaticon.com/512/6681/6681221.png" /></h1>
           <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email:" Height="42px" Width="814px"></asp:Label>
<asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style6" Height="16px" Width="539px"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                            ErrorMessage="Email is required." CssClass="error"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Invalid email format." CssClass="auto-style5"
                                ValidationExpression="\w+([-+.'']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="791px"></asp:RegularExpressionValidator>

<asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" Text="Password:"></asp:Label>
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="auto-style6" Width="535px"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                            ErrorMessage="Password is required." CssClass="error"></asp:RequiredFieldValidator>

            <asp:Button ID="Button1" runat="server" CssClass="submit-button" Text="Submit" OnClick="Button1_Click1" BackColor="Blue" BorderColor="Black" Height="41px" Width="134px" />
        </div>
    </form>
</body>
</html>
