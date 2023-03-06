<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPG.aspx.cs" Inherits="Self_Evaluation.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
 <div class="container">
     <center>
         
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required="required"/>


      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required="required"/>
        
         
         <button type="submit" formaction="https://localhost:44396/Hospital_reg.aspx" >LOGIN</button>
     

      <label>    Remember me  </label>
        <input type="checkbox" checked="checked" name="remember"/> 
                     </center>

    </div>     
        </div>
    </form>
</body>
</html>
