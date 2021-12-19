<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>
<!DOCTYPE html>

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
        .m-pointer{
            cursor:pointer;
        }
           .col-md-12 {
               margin-bottom: 20px;
        }
           .footer {
               height: 54px;
               color: aliceblue !important;
               background-color: darkslategrey;
               bottom: 0;
               width: 100% !important;
               position: fixed;
        }
           .container {
               margin-top:15%;
               margin-left: 40%;

           }
        
        </style>
    </head>

    <body>
    <div class="navbar">
        <asp:Label ID="Label2" runat="server" Text="Logo"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Header Text"></asp:Label>
         <div>

            <span class="m-pointer">Home</span> &nbsp; &nbsp;
            <span class="m-pointer">Contact Us</span> &nbsp; &nbsp;
            <span class="m-pointer">About</span>
        </div>
        </div>
   <div class="row justify-content-center">
       <div class="container col-md-6">
           <div class="col-md-12">
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="X-Large"></asp:Label>
</div>
           <div class="col-md-12">
               <span class="m-pointer"> <a href="Login.aspx">Go to Login</a></span>
           </div>
       </div>
        
    </div>
    <div class="footer row justify-content-center">
         <asp:Label ID="Label4" runat="server" Text="Footer Text"></asp:Label>&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label5" runat="server" Text="You Are Visitor Number"></asp:Label>&nbsp;
        <asp:Label ID="Label6" runat="server" Text="0"></asp:Label>
</div>

</body>
  

    


       
        
           
   



