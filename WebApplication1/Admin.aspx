<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test</title>
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
        
        .container {
            background-color: darkslategrey;
            color: white;
            padding: 30px;
            margin: 50px 0px 120px 0px;
            border-radius: 15px;
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
      a{
          color:white;
      }
       a:hover{
           color:white;           
       } 
        
    </style>
</head>
<body>
    <div class="navbar">
        <asp:Label ID="Label10" runat="server" Text="Logo"></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Header Text"></asp:Label>

        <div>

            <span class="m-pointer">Home</span> &nbsp; &nbsp;
            <span class="m-pointer">Contact Us</span> &nbsp; &nbsp;
            <span class="m-pointer"> <a href="Login.aspx">Logout</a></span>
            
        </div>
         
        <div class="row justify-content-center">
                <div class="container col-md-6">
                    <form id="form2" runat="server" property="og:title">
                                

                    <div class="row">
                        <div>
                        </div>
                            <div class="col-md-12">
                                <asp:Label ID="Label11" runat="server" CssClass="login-head" Text="AdminControlPage"></asp:Label>
                               </div>
                        
                                <div class="col-md-12">                                    
                                    <asp:Label ID="Label2" runat="server" Text="default page text1 "></asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                        <div class="col-md-12">                                            
                                            <asp:Label ID="Label3" runat="server" Text="default page text2 "></asp:Label>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        <div class="col-md-12">
                                            <asp:Label ID="Label4" runat="server" Text="Header Text"></asp:Label>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                         </div>
                                        <div class="col-md-12">
                                            <asp:Label ID="Label5" runat="server" Text="Footer Text"></asp:Label>
                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                         <div class="col-md-12">
                                             <asp:Button ID="Button1" runat="server" CssClass="SaveSettings-button btn btn-primary col-md-12" Text="Save Settings"  OnClick="Button1_Click" ForeColor="White" />
                             </div>
                        </div>
                    </form>
                </div>
             </div>
         </div>
    <div>
        <div class="footer row justify-content-center">
            <asp:Label ID="Label8" runat="server" Text="Footer Text"></asp:Label>&nbsp;&nbsp; &nbsp;
            <asp:Label ID="Label7" runat="server" Text=" You are Visitor number"></asp:Label>&nbsp;
            <asp:Label ID="Label9" runat="server" Text="0"></asp:Label>
         </div>
    </div>
     
</body>
    </html>
    
             
             


                                            


                                    
             

        
            
      
        
   
       
   

