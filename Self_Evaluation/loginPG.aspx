<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPG.aspx.cs" Inherits="Self_Evaluation.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
    <script src=" https://cdn.datatables.net/1.13.3/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.3/css/dataTables.bootstrap4.min.css" />
    <title></title>
    <style>
        div {
            margin-bottom: 10px;
        }

        label {
            display: inline-block;
            width: 150px;
        }

        .modal-dialog {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100%;
        }

        body {
            background-image: url("https://cdn.w600.comps.canstockphoto.com/medical-services-and-hospital-flat-eps-vectors_csp39137533.jpg");
            background-size: auto 1100px;
            background-repeat: no-repeat;
        }

        .modal-content {
            background-image: url('https://thumbs.dreamstime.com/b/doctor-medical-background-24834402.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <center>
        <button type="button" id="modal" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
         <i class="fa fa-hospital-o" style="font-size:24px;color:honeydew"></i>-Hospital Form
        </button>
    </center>
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">HEALTH CARE🏥</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div>
                        <form id="form1" runat="server">
                            <div>
                                <div class="container">
                                    <center>
                                        <div>
                                            <label for="uname"><b>User Name</b></label>
                                            <input type="text" placeholder="Enter Username" name="uname" required="required" />
                                        </div>
                                        <div>
                                            <label for="psw"><b>Password</b></label>
                                            <input type="password" placeholder="Enter Password" name="psw" required="required" />
                                        </div>
                                        <div>
                                            <button type="button"  class="btn btn-primary" onclick="login()">LOGIN</button>
                                        </div>
                                    </center>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function login() {
            var allowedEmailIds = ["vv.pavithran12@gmail.com", "pavithran.vv.2019.it@rajalakshmi.edu.in"];
            localStorage.setItem("allowedEmailIds", JSON.stringify(allowedEmailIds));
            // Get the allowed email ids from local storage
            var allowedEmailIds = JSON.parse(localStorage.getItem("allowedEmailIds"));
            // Get the entered email and password from the login form
            var enteredEmail = document.getElementsByName("uname")[0].value;
            var enteredPassword = document.getElementsByName("psw")[0].value;
            // Check if the entered email is allowed
            if (allowedEmailIds.includes(enteredEmail)) {
                // Email is allowed, check if password is correct and redirect to the logged-in page
                if (enteredPassword === "CorrectPassword") { // Replace "CorrectPassword" with your actual password validation code
                    window.location.href = "https://localhost:44396/Hospital_reg.aspx"; // Redirect to logged-in page
                } else {
                    Swal.fire('Access denied')
                }
            } else {
                Swal.fire('Access denied')

            }
        }
    </script>
</body>
</html>
