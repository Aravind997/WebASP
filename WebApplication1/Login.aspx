<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <style type="text/css">
        body {
            background-color: aliceblue;
        }      

        

        .navbar {
            height: 54px;
            width: 100%;
            color: aliceblue !important;
            background-color: darkslategrey;
        }
        .form {
            border-radius: 50px;
            padding: 200px;
            box-shadow: 10px 10px 10px 10px;
        }
        .container{
            background-color:darkslategrey;
            color:white;
            padding:20px;
            margin:40px 0px 100px 0px;
            border-radius:15px;
        }
        .login-head{
            font-size:30px;
            font-weight:600;
        }
        .col-md-12{
            margin-bottom:20px;
        }
        .m-pointer{
            cursor:pointer;
        }
        .footer{
            height: 54px;
            color: aliceblue !important;
            background-color: darkslategrey;
            bottom:0;
            width:100% !important;
            position:fixed;
        }
        .row{
            width: 100% !important;
        }
    </style>

</head>
<body>
    <div class="navbar">
        <asp:Label ID="Label4" runat="server" Text="Logo"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Header Text"></asp:Label>
        
        <div>
            <span class="m-pointer">Home</span> &nbsp; &nbsp;
            <span class="m-pointer">Contact Us</span> &nbsp; &nbsp;
            <span class="m-pointer">About</span>
        </div>

    </div>
        <div class="row justify-content-center">
                <div class="container col-md-4  ">

                    <form id="form1" runat="server" property="og:title">
                        <div class="row">
                            <div class="col-md-12">
                                 <asp:Label ID="Label1" runat="server" CssClass="login-head" Text="LOGIN PAGE"></asp:Label>
                            </div>
                             <div class="col-md-12">
                                  <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                                  <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-12">
                                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col-md-12">
                                <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="Incorrect Password. Please try again"></asp:Label>
                            </div>
                            <div class="col-md-12">
                                <asp:Button ID="Button1" runat="server" CssClass="login-button btn btn-primary col-md-12" OnClick="Button1_Click" Text="Login" />
                            </div>
                        </div>
                    </form>
                </div>
        </div>

    <div>
        <div class="footer row justify-content-center">
            <asp:Label ID="Label7" runat="server" Text="Footer Text"></asp:Label> &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label6" runat="server" Text="You are Visitor number 2"></asp:Label>
        </div>
    </div>
</body>
