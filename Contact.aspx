<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="product.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your contact page.</h3>
        <address>
            One Microsoft Way<br />
            Redmond, WA 98052-6399<br />
            <abbr title="Phone">P:</abbr>
            9398907161
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@puji.com">Support@pujitha.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@pujitha.com">Marketing@puji.com</a>
        </address>
    </main>
</asp:Content>
