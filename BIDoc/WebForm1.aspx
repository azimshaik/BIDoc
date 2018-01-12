<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BIDoc.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Collapsible sidebar using Bootstrap 3</title>

         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/style2.css">
    </head>
    <body>

        <form id="formBI" runat="server">

        <div class="wrapper">
            <!-- Sidebar Holder --> 
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>HYPER BI</h3>
                </div>

                <ul class="list-unstyled components">
                    <p>BI Discovery</p>
                    <li><a href="#about">About</a></li>
                    <li><a href="#pilotOverview">Pilot Overview</a></li>
                    <li><a href="#participantList">Participant</a></li>
                    <li class="active">
                        <a href="#findingsSubmenu" data-toggle="collapse" aria-expanded="false">Findings</a>
                        <ul class="collapse list-unstyled" id="findingsSubmenu">
                            <li><a href="#">Big Plans</a></li>
                            <li><a href="#">Key Drivers</a></li>
                            <li><a href="#">Critical Success Factors</a></li>
                            <li><a href="#">Barriers to Success</a></li>
                            <li><a href="#">Constraints</a></li>
                            <li><a href="#">Business-Critical Questions</a></li>
                            <li><a href="#">Business Model</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#recommendationsSubmenu" data-toggle="collapse" aria-expanded="false">Recommendations</a>
                        <ul class="collapse list-unstyled" id="recommendationsSubmenu">
                            <li><a href="#">Guiding Principles</a></li>
                            <li><a href="#">Suggested Roadmap</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#appendixSubmenu" data-toggle="collapse" aria-expanded="false">Appendix</a>
                        <ul class="collapse list-unstyled" id="appendixSubmenu">
                            <li><a href="#">Logical ERD</a></li>
                            <li><a href="#">GRC Application Relationship Diagram</a></li>
                            <li><a href="#">RCSA Application Relationship Diagram</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Portfolio</a>
                    </li>
                    <li>
                        <a href="#">Revision Record</a>
                    </li>
                </ul>
                <!--
                <ul class="list-unstyled CTAs">
                    <li><a href="https://bootstrapious.com/tutorial/files/sidebar.zip" class="download">Download source</a></li>
                    <li><a href="https://bootstrapious.com/p/bootstrap-sidebar" class="article">Back to article</a></li>
                </ul> -->
            </nav>

            <!-- Page Content Holder -->
            <div id="content">

                <nav class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                <span>Toggle Sidebar</span>
                            </button>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <section id="about">
                      <h2>About</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

                        </p>
                </section>
                <div class="line"></div>
                <section id="pilotOverview">
                       <h2>Pilot Overview</h2>
                       <div class="form-group">
                           <textarea class="form-control" id="Pilot_Overview_Heading" cols="10" rows="1" placeholder="Overview Title" name="PilotTitle" data-ttype="h" ></textarea>
                           <br />
                           <textarea class="form-control" id="Pilot_Overview1_Text" rows="4" placeholder="Overview 1.1" name="PilotO1"></textarea>
                           <br />
                           <textarea class="form-control" id="Pilot_Overview2_Text" rows="4" placeholder="Overview 1.2" name="PilotO2"></textarea>
                           <br />
                           <textarea class="form-control" id="Pilot_Overview3_Text" rows="4" placeholder="Overview 1.3" name="PilotO3"></textarea>
                           <br />
                       </div>
                       <input type="button" value="Add" class="btn btn-group-sm btn-info" onclick="AddTextAreaControl('pilotOverview')" />
                </section>
                <section id="findingsSubmenu">
                    <h2>3. Findings</h2>
                    <p>This section is a summary of findings from the BIDiscovery! Workshop</p>
                     <div class="form-group">
                         <h3>3.1 Big Plans</h3>
                         <textarea class="form-control" id="Big_Plans_Text" rows="4" name="Findings1"></textarea>
                         <h3>3.2 Key Drivers</h3>
                         <textarea class="form-control" id="Key_Drivers_Text" rows="4" name="Findings2"></textarea>
                         <h3>3.3 Critical Success Factors</h3>
                         <textarea class="form-control" id="Critical_Success_Factors_text" rows="4" name="Findings3"></textarea>
                         <h3>3.4 Barriers to Success</h3>
                         <textarea class="form-control" id="Barriers_to_Success_Text" rows="4" name="Findings4"></textarea>
                         <h3>3.5 Constraints</h3>
                         <textarea class="form-control" id="Constraints_Text" rows="4" name="Findings5"></textarea>
                         <h3>3.6 Business Critical Questions</h3>
                         <textarea class="form-control" id="Business_Critical_Questions_Text" rows="4" name="Findings6"></textarea>
                         <h3>3.7 Business Model</h3>
                         <textarea class="form-control" id="Business_Model_Text" rows="4" name="Findings7"></textarea>
                         <h3>3.7.1 Dimensions</h3>
                         <textarea class="form-control" id="Dimentions_Text" rows="4" name="Findings7_1"></textarea>
                         <br />
                     </div>
                       <input type="button" value="Add" class="btn btn-group-sm btn-info" onclick="AddTextAreaControl('findingsSubmenu')" />
                </section>
                <div class="line"></div>
                <h2>Collapsible Sidebar Using Bootstrap 3</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <!--<asp:Button ID="Button1" runat="server" Text="Save Doc" CssClass="btn btn-lg btn-primary"  OnClientClick="Submit()" />OnClick="Btn_CreateDoc_Click"-->
                <input type="button" value="Save Doc" class="btn btn-lg btn-primary" onclick ="Submit()" />
                <div class="line"></div>

                <h2>Lorem Ipsum Dolor</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

                <div class="line"></div>

                <h2>Lorem Ipsum Dolor</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

                <div class="line"></div>

                <h3>Lorem Ipsum Dolor</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>



        </form>

        <!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <!-- jQuery Nicescroll CDN -->
         <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.6.8-fix/jquery.nicescroll.min.js"></script>

         <script type="text/javascript">
             function AddTextAreaControl(group)
             {
                 var name = group + "-" + $("#" + group + " .form-group").children(".form-control").length;
                 $("#" + group + " .form-group").append('<textarea class="form-control" cols="10" rows="4" placeholder="Enter Text" name="' +name +'" id="'+ name+ '"></textarea><br/>');

             }
             function Submit()
             {
                var FormDataArray = [];

                 $.each($("#formBI .form-control"), function (i, v) {
                     var kv = { "ID": $(v).prop("id"), "Name": $(v).prop("name"), "Value": $(v).val(), "TextType": $(v).data("ttype") };
                     FormDataArray.push(kv); 
                 });

                 $.ajax({
                     url: "WebForm1.aspx/SubmitForm",
                     method: "POST",
                     contentType: 'application/json',
                     data: JSON.stringify({ FormData: FormDataArray }),
                     traditional: true, 
                     failure: function (a,b,c) {
                         console.log(a); 
                     },
                     success: function (a, b, c) {
                         console.log(b); 
                     }
                 });
             }

             $(document).ready(function () {
                 $("#sidebar").niceScroll({
                     cursorcolor: '#53619d',
                     cursorwidth: 4,
                     cursorborder: 'none'
                 });

                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar, #content').toggleClass('active');
                     $('.collapse.in').toggleClass('in');
                     $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                 });
             });
         </script>
    </body>
</html>
