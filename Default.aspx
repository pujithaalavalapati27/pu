<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="product._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="form-container" style="width: 40%; height: 679px">
            <h2>Register</h2>
            
            <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" CssClass="input-box"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" 
                                        ErrorMessage="Name is required." CssClass="error"></asp:RequiredFieldValidator>

            <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                                        ErrorMessage="Email is required." CssClass="error"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                            ErrorMessage="Invalid email format." CssClass="error"
                                            ValidationExpression="\w+([-+.'']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-box"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                                        ErrorMessage="Password is required." CssClass="error"></asp:RequiredFieldValidator>

          <asp:Label ID="lblConfirmPassword" runat="server" AssociatedControlID="txtConfirmPassword" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="input-box"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" 
                                        ErrorMessage="Confirm password is required." CssClass="error"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" 
                                  ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match." 
                                  CssClass="error"></asp:CompareValidator>
      <!--     <asp:Label ID="Label3" runat="server" Text="Label">Gender</asp:Label>
            <asp:RadioButtonList id=RadioButtonList1 runat="server">
         <asp:ListItem>Male</asp:ListItem>
         <asp:ListItem>Female</asp:ListItem>
         </asp:RadioButtonList>
            <asp:Label ID="Label1" runat="server" Text="Label">Country</asp:Label>
            <asp:DropDownList id="DropDownList1" 
           runat="server">
         <asp:ListItem>India</asp:ListItem>
         <asp:ListItem>USA</asp:ListItem>
         <asp:ListItem>UK</asp:ListItem>
         <asp:ListItem>PAKISTHAN</asp:ListItem> 
         <asp:ListItem>Sri Lanka</asp:ListItem>
      </asp:DropDownList>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Technologies Known"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>.Net</asp:ListItem>
                <asp:ListItem>Python</asp:ListItem>
                <asp:ListItem>SQL</asp:ListItem>
                <asp:ListItem>C#</asp:ListItem>
            </asp:CheckBoxList>-->
           <!-- <asp:FileUpload runat="server" ></asp:FileUpload> -->
            <asp:Button ID="btnSubmit" runat="server" Text="Register" CssClass="submit-button" OnClick="btnSubmit_Click" /> 
			 <!-- Label to display success/error messages -->
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
            <br />
            
              <!-- Data Grid Container -->
        <div class="data-container" style="width: 200%; height: 679px; margin-right: 265px">
            <div class="mat-card" style="width: 650px; height: 500px; margin-right: 434px;">
                <h2 >Registered Users</h2>
                <asp:DataGrid ID="dgUsers" runat="server" CssClass="mat-table" AutoGenerateColumns="False" OnItemCommand="dgUsers_ItemCommand" style="margin-right: 568px; margin-left: 0px; margin-bottom: 11px;" Height="436px" Width="1030px"  >
                    <Columns>
                        <asp:BoundColumn HeaderText="User Id" DataField="user_id"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="User Name" DataField="name"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="User Email" DataField="email"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Password" DataField="password"></asp:BoundColumn>
                        <asp:TemplateColumn>
                            <ItemTemplate>
                                <asp:Button runat="server" ID="btnEdit" CommandName="Edit" CommandArgument='<%#Eval("user_id") %>' Text="Edit" CssClass="table-button btn-edit" />
                                 <asp:Button runat="server" ID="btnDelete" CommandName="Delete" CommandArgument='<%#Eval("user_id") %>' Text="Delete" CssClass="table-button btn-delete" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
        </div>

        <div class="clearfix"></div>
        </div>
    </main>
</asp:Content>
