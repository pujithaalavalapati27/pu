using product;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace product
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUsers();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string name = txtName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            Registration registration = new Registration();

            if (btnSubmit.Text == "Register")
            {
                registration.InsertUser(name, password, email);
                lblMessage.Text = "User data saved successfully";
            }
            else if (btnSubmit.Text == "Update")
            {
                int user_id = Convert.ToInt32(hdnUserId.Value);
                registration.UpdateUser(name, email, password, user_id);
                lblMessage.Text = "User data Updated successfully";
            }

            BindUsers();
            ClearFields();

        }

        private void BindUsers()
        {
            Registration registration = new Registration();
            var users = registration.GetUsers();

            dgUsers.DataSource = users;
            dgUsers.DataBind();
        }


        private void ClearFields()
        {
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            //txtConfirmPassword.Text = string.Empty;
            lblMessage.Text = string.Empty;

            btnSubmit.Text = "Register";
            hdnUserId.Value = string.Empty;
        }

        protected void dgUsers_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            int user_id = Convert.ToInt32(e.CommandName);

            if (e.CommandName == "Delete")
            {
                Registration registration = new Registration();
                registration.DeleteUser(user_id);

                BindUsers();
            }
            else if (e.CommandName == "Edit")
            {


                Registration registration = new Registration();
                var user = registration.GetUser(user_id);

                txtName.Text = user.name;
                txtEmail.Text = user.email;
                txtPassword.Text = user.password;

                hdnUserId.Value = user.user_id.ToString();

                btnSubmit.Text = "Update";
            }
        }

       
    }

    internal class hdnUserId
    {
        internal static object Value;
    }
}