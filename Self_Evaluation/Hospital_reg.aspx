 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospital_reg.aspx.cs" Inherits="Self_Evaluation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>Hospital Reg</title>
    <style>
        div {
            margin-bottom: 10px;
        }

        label {
            display: inline-block;
            width: 150px;
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

        #modal {
            display: block;
            margin-left: auto;
            margin-right: auto;
            border-style: solid;
            border-color: blanchedalmond;
            border-radius: 8px;
            padding: 5px;
        }

        body {
            background-image: url("https://www.shutterstock.com/image-vector/abstract-health-science-consist-plus-260nw-1569291193.jpg");
            background-size: auto 1100px;
            background-repeat: no-repeat;
        }

        .card-header {
            background-image: url("https://www.shutterstock.com/image-vector/abstract-health-science-consist-plus-260nw-1569291193.jpg");
            background-size: auto 1100px;
            background-repeat: no-repeat;
        }

        .modal-content {
            background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20190222/ourmid/pngtree-blue-medical-industry-hospital-doctor-poster-background-backgroundmedical-industryhospitalhospital-backgrounddoctorsdoctor-image_63815.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="accordian" id="accordianid">
            <div class="card" id="headone" style="background-color: steelblue">
                <div class="card-header">
                    <button class="btn btn-link" style="color: blanchedalmond" type="button" data-toggle="collapse" data-target="#collapseone">
                        Register
                    </button>
                </div>
                <div id="collapseone" class="collapse" data-parent="#accordianid">
                    <div class="card-body">
                        <button type="button" id="modal" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                            <i class="fa fa-envelope" style='color: blanchedalmond'></i>Form
                        </button>
                        <div class="modal" id="myModal">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">HEALTH CARE🏥</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <form id="form1" runat="server">
                                            <div>
                                                <label for="Name">Name:</label>
                                                <input type="text" id="Name" class="col-sm-8" />
                                            </div>
                                            <div>
                                                <label for="FatherName">FatherName:</label>
                                                <input type="text" id="FatherName" class="col-sm-8" />
                                            </div>
                                            <div>
                                                <label for="Gender">Gender:</label><br />
                                                <input type="radio" id="Male" name="Gender" value="Male" class="col-lg-4" />
                                                <label for="Male">Male</label><br />
                                                <input type="radio" id="Female" name="Gender" value="Female" class="col-lg-4" />
                                                <label for="Female">Female</label>
                                            </div>
                                            <div>
                                                <label for="DOB">DOB:</label>
                                                <input type="date" id="DOB" class="col-lg-8" />
                                            </div>
                                            <div>
                                                <label for="Native">Native:</label>
                                                <select id="Native" name="Native" class="col-lg-8">
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
                                                <label for="symtoms">symtoms:</label><br />
                                                <input type="checkbox" id="Fever" name="symtoms" value="Fever" class="col-lg-4" />
                                                <label for="Fever">Fever</label><br />
                                                <input type="checkbox" id="Cough" name="symtoms" value="Cough" class="col-lg-4" />
                                                <label for="Cough">Cough</label><br />
                                                <input type="checkbox" id="Headache" name="symtoms" value="Headache" class="col-lg-4" />
                                                <label for="Headache">Headache</label>
                                            </div>
                                            <div>
                                                <label for="disease">disease</label>
                                                <select name="disease" id="disease" class="select2_tags" multiple="multiple"></select>
                                            </div>
                                            <div>
                                                <label for="RegistrationDate">Registration Date:</label>
                                                <input type="datetime-local" id="RegistrationDate" class="col-sm-8" />
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" id="submitButton" class="btn btn-primary" onclick="submitclick()">Submit</button>
                                                <button type="button" id="resetButton" class="btn btn-primary" onclick="Resetform()">Reset</button>
                                                <button type="button" id="updateButton" class="btn btn-primary" onclick="updatetable()" hidden="hidden">Update</button>
                                                <button type="button" id="cancleButton" class="btn btn-primary" onclick="cancle()" hidden="hidden">Cancle</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card" id="headtwo" style="background-color: steelblue">
                <div class="card-header">
                    <button class="btn btn-link" style="color: blanchedalmond" type="button" data-toggle="collapse" data-target="#collapsetwo">
                        Output
                    </button>
                </div>
                <div id="collapsetwo" class="collapse hide" data-parent="#accordianid">
                    <div class="card-body">
                        <table id="dataTable">
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
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function validateForm() {
            var name = document.getElementById("Name").value;
            var FatherName = document.getElementById("FatherName").value;
            var Gender = document.querySelector('input[name="Gender"]:checked');
            var DOB = document.getElementById("DOB").value;
            var Native = document.getElementById("Native").value;
            var symtoms = document.querySelector('input[name="symtoms"]:checked');
            var disease = document.getElementById("disease").value;
            var RegistrationDate = document.getElementById("RegistrationDate").value;
            var valid = true;
            if (name == "") {
                valid = false;
                Swal.fire(
                    'Name is Missing?',
                    'Please fill your Name?',
                    'question'
                )
            }
            else if (FatherName == "") {
                valid = false;
                Swal.fire(
                    'FatherName is Missing?',
                    'Please fill your FatherName?',
                    'question'
                )
            }
            else if (Gender == null) {
                valid = false;
                Swal.fire(
                    'Gender is Missing?',
                    'Please select your Gender?',
                    'question'
                )
            }
            else if (DOB == "") {
                valid = false;
                Swal.fire(
                    'DOB is Missing?',
                    'Please fill your DOB?',
                    'question'
                )
            }
            else if (Native == "select") { // check if Native field is not selected
                valid = false;
                Swal.fire(
                    'Native is Missing?',
                    'Please select your Native?',
                    'question'
                )
            }
            else if (symtoms == null) {
                valid = false;
                Swal.fire(
                    'symtoms is Missing?',
                    'Please select your symtoms?',
                    'question'
                )
            }
            else if (disease == "") {
                valid = false;
                Swal.fire(
                    'disease is Missing?',
                    'Please select your disease?',
                    'question'
                )
            }
            else if (RegistrationDate == "") {
                valid = false;
                Swal.fire(
                    'Registrsion Date is Missing?',
                    'Please fill your Registrsion Date?',
                    'question'
                )
            }
            return valid;
        }
        $(document).ready(function () {
            $('.select2_tags').select2({
                placeholder: "Select",
                data: ["BP", "Sugar", "Diabetes", "HIV"]
            })
        });
        function submitclick() {
            if (validateForm()) {
                // Get the data from the form
                var data = {
                    name: document.getElementById("Name").value,
                    fatherName: document.getElementById("FatherName").value,
                    DOB: document.getElementById("DOB").value,
                    gender: document.querySelector('input[name="Gender"]:checked').value,
                    Native: document.getElementById("Native").value,
                    symtoms: [],
                    disease: [],
                    RegistrsionDate: document.getElementById("RegistrationDate").value,
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
                // Add the data to the table
                var tableBody = document.getElementById("dataTable");
                var row = tableBody.insertRow();
                row.innerHTML = "<td>" + data.name + "</td>" +
                    "<td>" + data.fatherName + "</td>" +
                    "<td>" + data.gender + "</td>" +
                    "<td>" + data.DOB + "</td>" +
                    "<td>" + data.Native + "</td>" +
                    "<td>" + data.symtoms.join(", ") + "</td>" +
                    "<td>" + data.disease.join(", ") + "</td>" +
                    "<td>" + data.RegistrsionDate + "</td>" +
                    "<td><button class='edit-button' style='background-color: cadetblue;' onclick='editRow(this)'><i class='fas fa-pencil-alt'></i>Edit</button></td>" +
                    "<td><button class='delete-button' style='background-color: cadetblue;' onclick='deleteRow(this)'><i class='fas fa-trash-alt'></i>Delete</button></td>";

                Resetform();
            }
        }
        function editRow(button) {
            // Get the row that contains the button
            var row = button.parentNode.parentNode;
            Swal.fire({
                title: 'Do you want to edit this row in Form?',
                showDenyButton: true,
                showCancelButton: true,
                confirmButtonText: 'Yes',
                denyButtonText: 'No',
                customClass: {
                    actions: 'my-actions',
                    cancelButton: 'order-1 right-gap',
                    confirmButton: 'order-2',
                    denyButton: 'order-3',
                }
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire('Edited!', '', 'success')
                    $("#updateButton").attr("hidden", false);
                    $("#cancleButton").attr("hidden", false);
                    $("#submitButton").hide();
                    $("#resetButton").hide();
                    // Populate the form with the data from the selected row
                    document.getElementById("Name").value = row.cells[0].textContent;
                    document.getElementById("FatherName").value = row.cells[1].textContent;
                    // Get the gender value from the row and set the corresponding radio button
                    var gender = row.cells[2].textContent;
                    var maleRadio = document.getElementById("Male");
                    var femaleRadio = document.getElementById("Female");
                    if (gender === "Male") {
                        maleRadio.checked = true;
                    } else if (gender === "Female") {
                        femaleRadio.checked = true;
                    }
                    // Get the DOB value from the row and set the date input
                    var dob = row.cells[3].textContent;
                    document.getElementById("DOB").value = dob;
                    // Get the Native value from the row and set the corresponding dropdown option
                    var native = row.cells[4].textContent;
                    var nativeDropdown = document.getElementById("Native");
                    for (var i = 0; i < nativeDropdown.options.length; i++) {
                        if (nativeDropdown.options[i].value === native) {
                            nativeDropdown.options[i].selected = true;
                            break;
                        }
                    }
                    // Get the symptoms values from the row and set the checkboxes
                    var symptoms = row.cells[5].textContent.split(', ');
                    var feverCheckbox = document.getElementById("Fever");
                    var coughCheckbox = document.getElementById("Cough");
                    var headacheCheckbox = document.getElementById("Headache");
                    for (var i = 0; i < symptoms.length; i++) {
                        if (symptoms[i] === "Fever") {
                            feverCheckbox.checked = true;
                        } else if (symptoms[i] === "Cough") {
                            coughCheckbox.checked = true;
                        } else if (symptoms[i] === "Headache") {
                            headacheCheckbox.checked = true;
                        }
                    }
                    // Get the diseases values from the row and set the corresponding dropdown options
                    var diseases = row.cells[6].textContent.split(', ');
                    var diseaseSelect = $('.select2_tags');
                    for (var i = 0; i < diseases.length; i++) {
                        diseaseSelect.append('<option value="' + diseases[i] + '" selected>' + diseases[i] + '</option>');
                    }
                    diseaseSelect.trigger('change');
                    // Get the registration date value from the row and set the date input
                    var registrationDate = row.cells[7].textContent;
                    var formattedDate = new Date(registrationDate).toISOString().substring(0, 16);
                    document.getElementById("RegistrationDate").value = formattedDate;
                    // Add a class to mark the selected row
                    row.classList.add("selected");
                }
            });
        }
        function updatetable() {
            // Get the updated data from the form
            var updatedData = {
                name: document.getElementById("Name").value,
                fatherName: document.getElementById("FatherName").value,
                DOB: document.getElementById("DOB").value,
                gender: document.querySelector('input[name="Gender"]:checked').value,
                Native: document.getElementById("Native").value,
                symtoms: [],
                disease: [],
                RegistrsionDate: document.getElementById("RegistrationDate").value,
            };
            // Get the selected symtoms
            var symtomsList = document.querySelectorAll('input[name="symtoms"]:checked');
            for (var i = 0; i < symtomsList.length; i++) {
                updatedData.symtoms.push(symtomsList[i].value);
            }
            // Get the selected diseases
            var diseaseList = document.querySelectorAll('#disease option:checked');
            for (var i = 0; i < diseaseList.length; i++) {
                updatedData.disease.push(diseaseList[i].value);
            }
            // Get the index of the row to update
            var table = document.getElementById("dataTable");
            var selectedRow = table.querySelector(".selected");
            var rowIndex = Array.from(table.rows).indexOf(selectedRow);
            // Replace the existing row with the updated data
            table.rows[rowIndex].cells[0].textContent = updatedData.name;
            table.rows[rowIndex].cells[1].textContent = updatedData.fatherName;
            table.rows[rowIndex].cells[2].textContent = updatedData.gender;
            table.rows[rowIndex].cells[3].textContent = updatedData.DOB;
            table.rows[rowIndex].cells[4].textContent = updatedData.Native;
            table.rows[rowIndex].cells[5].textContent = updatedData.symtoms.join(", ");
            table.rows[rowIndex].cells[6].textContent = updatedData.disease.join(", ");
            table.rows[rowIndex].cells[7].textContent = updatedData.RegistrsionDate;
            // Remove the selected class from the updated row
            selectedRow.classList.remove("selected");
            // Hide the update and cancel buttons, and show the submit and reset buttons
            $("#updateButton").attr("hidden", true);
            $("#cancleButton").attr("hidden", true);
            $("#submitButton").show();
            $("#resetButton").show();
            // Reset the form
            Resetform();
        }
        function deleteRow(button) {
            // Get the row that contains the button
            var row = button.parentNode.parentNode;
            Swal.fire({
                title: 'Are you sure you want to delete this row?',
                showDenyButton: true,
                showCancelButton: true,
                confirmButtonText: 'Yes',
                denyButtonText: 'No',
                customClass: {
                    actions: 'my-actions',
                    cancelButton: 'order-1 right-gap',
                    confirmButton: 'order-2',
                    denyButton: 'order-3',
                }
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire('Deleted!', '', 'success');
                    // Remove the row from the table
                    row.remove();
                }
            });
        }

        function Resetform() {
            // Reset the form
            document.getElementById("form1").reset();
            // Clear the selected options in the select2 element
            $('#disease').val([]).trigger('change');
        }
    </script>
</body>
</html>
    