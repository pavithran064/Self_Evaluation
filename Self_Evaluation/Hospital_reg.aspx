 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospital_reg.aspx.cs" Inherits="Self_Evaluation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <title>Hospital Reg</title>
  <style>
    /* Style the form elements */
    label {
        display: inline-block;
        width: 120px;
        text-align: left;
    }
    input, select {
        display: inline-block;
        width: 200px;
        padding: 5px;
        margin-bottom: 10px;
    }
    button {
        margin-top: 10px;
    }
    table, th, td {
  border: 1px solid;
}

table {
  width: 100%;
}
</style>

</head>
<body>
    <div class="container">
        <div class="accordian" id="accordianid">
            <div class="card" id="headone">
                <div class="card-header">
                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseone">
                        Register
                    </button>
                </div>
                <div id="collapseone" class="collapse" data-parent="#accordianid">
                    <div class="card-body">
                        <form  id="form1" runat="server">
                            <div >
                                <lable for="Name">Name:</lable>
                                <input type="text" id="Name" class="col-sm-4" />
                            </div>
                            <div>
                                <lable for="FatherName">FatherName:</lable>
                                <input type="text" id="FatherName" class="col-sm-4"  />
                            </div>
                            <div>
                                <lable for="Gender">Gender:</lable>
                                <input type="radio" id="Male" name="Gender" value="Male" />
                                <label for="Male">Male</label>
                                <input type="radio" id="Female" name="Gender" value="Female" />
                                <label for="Female">Female</label>
                            </div>
                            <div>
                                <lable for="DOB">DOB:</lable>
                                <input type="date" id="DOB" class="col-sm-4"  />
                            </div>
                            <div>
                                <lable for="Native">Native:</lable>
                                <select id="Native" name="Native">
                                    <option value="select" disabled="disabled" selected="selected">select</option>
                                    <option value="Chennai">Chennai</option>
                                    <option value="Kanyakumari">Kanyakumari</option>
                                    <option value="Mannargudi">Mannargudi</option>
                                    <option value="Thiruvarur">Thiruvarur</option>
                                    <option value="Thanjavur">Thanjavur</option>
                                    <option value="Madurai">Madurai</option>
                                </select>
                            </div>
                            <div>
                                <lable for="symtoms">symtoms:</lable><br />
                                <input type="checkbox" id="Fever" name="symtoms" value="Fever" />
                                <label for="Fever">Fever</label><br />
                                <input type="checkbox" id="Cough" name="symtoms" value="Cough" />
                                <label for="Cough">Cough</label><br />
                                <input type="checkbox" id="Headache" name="symtoms" value="Headache" />
                                <label for="Headache">Headache</label>
                            </div>
                            <div>
                                <lable for="disease">disease</lable>
                                <select name="disease" id="disease" class="select2_tags" multiple="multiple">
                                </select>
                            </div>

                            <div>
                                <lable for="Registrsion_Date">Registrsion_Date:</lable>
                                <input type="datetime-local" id="Registrsion_Date" class="col-sm-4"  />
                            </div>
                            <div>
                                <button type="button" id="submitbutton" onclick="validationform()">Submit</button>
                                    <button type="button" id="Restbutton" onclick="Restform()">Reset</button>
                            </div>
                        </form>
                        </div>
                    </div>
                </div>        
            <div class="card" id="headtwo">
                <div class="card-header">
                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapsetwo">
                        Output
                    </button>
                </div>
                <div id="collapsetwo" class="collapse hide" data-parent="#accordianid">
                    <div class="card-body">

                        <table>
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>FatherName</th>
                                    <th>Gender</th>
                                    <th>DOB</th>
                                    <th>Native</th>
                                    <th>symtoms</th>
                                    <th>disease</th>
                                    <th>Registration_date</th>
                                </tr>
                            </thead>
                            <tbody id="tabledata"></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function validationform() {
            var name = document.getElementById("Name").value;
            var FatherName = document.getElementById("FatherName").value;
            var Gender = document.querySelector('input[name="Gender"]:checked');
            var DOB = document.getElementById("DOB").value;
            var Native = document.getElementById("Native").value;
            var symtoms = document.querySelector('input[name="symtoms"]:checked');
            var disease = document.getElementById("disease").value;
            var Registrsion_Date = document.getElementById("Registrsion_Date").value;

            if (name == "") {
                Swal.fire(
                    'Name is Missing?',
                    'Please fill your Name?',
                    'question'
                )
            }
            else if (FatherName == "") {
                Swal.fire(
                    'FatherName is Missing?',
                    'Please fill your FatherName?',
                    'question'
                )
            }
            else if (Gender == null) {
                Swal.fire(
                    'Gender is Missing?',
                    'Please select your Gender?',
                    'question'
                )
            }
            else if (DOB == "") {
                Swal.fire(
                    'DOB is Missing?',
                    'Please fill your DOB?',
                    'question'
                )
            }
            else if (Native == "select") { // check if Native field is not selected
                Swal.fire(
                    'Native is Missing?',
                    'Please select your Native?',
                    'question'
                )
            }
            else if (symtoms == null) {
                Swal.fire(
                    'symtoms is Missing?',
                    'Please select your symtoms?',
                    'question'
                )
            }
            else if (disease == "") {
                Swal.fire(
                    'disease is Missing?',
                    'Please select your disease?',
                    'question'
                )
            }
            else if (Registrsion_Date == "") {
                Swal.fire(
                    'Registrsion Date is Missing?',
                    'Please fill your Registrsion Date?',
                    'question'
                )
            }
            var data = {
                name: document.getElementById("Name").value,
                fatherName: document.getElementById("FatherName").value,
                DOB: document.getElementById("DOB").value,
                gender: document.querySelector('input[name="Gender"]:checked').value,
                Native: document.getElementById("Native").value,
                symtoms: [],
                disease: [],
                Registrsion_Date: document.getElementById("Registrsion_Date").value,

            };
            // Get the selected symtoms
            var symtomsList = document.querySelectorAll('input[name="symtoms"]:checked');
            for (var i = 0; i < symtomsList.length; i++) {
                data.symtoms.push(symtomsList[i].value);
            }
            // Get the selected diseases
            var diseaseList = document.querySelectorAll('#disease option:checked');
            for (var i = 0; i < diseaseList.length; i++) {
                data.disease.push(diseaseList[i].value);
            }
            var tableBody = document.getElementById("tabledata");
            var row = tableBody.insertRow();
            row.innerHTML = "<td>" + data.name + "</td>" +
                "<td>" + data.fatherName + "</td>" +
                "<td>" + data.gender + "</td>" +
                "<td>" + data.DOB + "</td>" +
                "<td>" + data.Native + "</td>" +
                "<td>" + data.symtoms.join(", ") + "</td>" +
                "<td>" + data.disease.join(", ") + "</td>" +
                "<td>" + new Date().toLocaleDateString() + "</td>" +
                "<td><button class='edit-button' onclick='editRow(this)'>Edit</button></td>";
            Restform();
        }
        function editRow(button) {
            // Get the row that contains the button
            var row = button.parentNode.parentNode;

            // Populate the form with the data from the selected row
            document.getElementById("Name").value = row.cells[0].textContent;
            document.getElementById("FatherName").value = row.cells[1].textContent;

            // ...
            // Populate the form fields for the rest of the data

            // Remove the row from the table
            row.parentNode.removeChild(row);
        }
        $(document).ready(function () {
            $('.select2_tags').select2({
                placeholder: "Select",
                data: ["BP", "Sugar", "Diabetes", "HIV"]
            })
        });
        function Restform() {
            // Reset the form
            document.getElementById("form1").reset();
            // Clear the selected options in the select2 element
            $('#disease').val([]).trigger('change');
        }
        $('#submitbutton').click(function () {
            validationform();
        });
    </script>
</body>
</html>
