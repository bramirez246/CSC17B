<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" href="style.css">
        <script src="Survey.js"></script>
        <script src="clearStorage.js"></script>
    </head>
    
    <body>
        <ul id="topnav">
            <li><a href="main.html" class ="active">Home</a></li>
        </ul>
        
        <div id="main">
            <div id="createSurvey">
                <a href="addQuestion.html">New Survey</a>
                <a href="surveyDemo.html">Survey Demo</a>
            </div>
            <h1 id="survey_name"></h1>
            <p id="description"></p>
            
            <div id="bigCont">
                <div id="loginCont">
                    
                    <!--------------------------- back button ----------------------------->
                    <div id="loginNavBar">
                        <p onclick="displayLoginopt()"><b>&lt;</b> back</p>
                    </div>
                    
                    <!--------------------------- login option ----------------------------->
                    <div id="loginOpt">
                        <h1>Login</h1>
                        <hr>
                        <a onclick="displayLogin()">User</a>
                    </div>
                    
                    <!--------------------------- login form ----------------------------->
                    <div id="login">
                        <p id="loginTitle" class="active">Login</p>
                        <p id="loginTitle" onclick="displaySignup()">Sign Up</p>
                        <hr>
                        <form action="login.php" method="post" id="loginForm">
                            <input type="text" name="email" placeholder="Enter email" onfocus="this.placeholder=''" onblur="this.placeholder='Enter email'"><br>
                            <br><input type="password" name="password" id="password" placeholder="Enter password" onfocus="this.placeholder=''" onblur="this.placeholder='Enter password'"><br><br>
                        </form>
                        <a id="loginBtn" onclick="loginCheck()">Login</a>
                    </div>
                    
                    <!--------------------------- signup form ----------------------------->
                    <div id="signup">
                        <p id="loginTitle" onclick="displayLogin()">Login</p>
                        <p id="loginTitle" class="active">Sign Up</p>
                        <hr>
                        <form action="signup.php" method="post" id="signUpForm">
                            <span id="errormsg">
                            </span>
                            <input type="text" name="firstname" id="firstName" placeholder="First Name" onfocus="this.placeholder=''" onblur="this.placeholder='First Name'" required><br>
                            <br><input type="text" name="lastname" id="lastName" placeholder="Last Name" onfocus="this.placeholder=''" onblur="this.placeholder='Last Name'" required><br>
                            <br><input type="text" name="email" id="email" placeholder="Email" onfocus="this.placeholder=''" onblur="this.placeholder='Email'" required><br>
                            <br><input type="password" name="password" id="pass" placeholder="Password" onfocus="this.placeholder=''" onblur="this.placeholder='Password'" required><br>
                            <br><input type="password" name="password" placeholder="Repeat Password" onfocus="this.placeholder=''" onblur="this.placeholder='Repeat Password'"  onclick="regExpreCheck()" id="rePass" required><br><br>
                        </form>
                        <a id="signUpBtn" onclick="signupCheck()">Sign Up</a>
                    </div>
                    
                </div>
            </div>
            
        </div>
        
        <script type="text/javascript">
            /*********************** display and hide login contents ***********************/
            function displayLoginopt(){
                document.getElementById("loginOpt").style.display = "block";
                document.getElementById("loginNavBar").style.display = "none";
                document.getElementById("login").style.display = "none";
                document.getElementById("signup").style.display = "none";
            }
            
            function displayLogin(){
                document.getElementById("loginOpt").style.display = "none";
                document.getElementById("loginNavBar").style.display = "block";
                document.getElementById("login").style.display = "block";
                document.getElementById("signup").style.display = "none";
            }
            
            function displaySignup(){
                document.getElementById("login").style.display = "none";
                document.getElementById("signup").style.display = "block";
            }
            
            /***************************** login/signup check ***********************************/
            function loginCheck(){
                var RECheck = regExpreCheck("password");
                
                if(RECheck === true){
                    document.getElementById("loginForm").submit();
                }
            }
            
            function signupCheck(){
                var RECheck = regExpreCheck("pass");
                var samePass = matchPass();
                
                if(RECheck===true && samePass===true){
                    document.getElementById("signUpForm").submit();
                }
            }
            
            function regExpreCheck(testLoc){
                var pass = document.getElementById(testLoc).value;

                var check = /((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,})/.test(pass);

                if(!check){
                    alert("The password must be:\n- 6 digit long\n- 1 uppercase letter\n- 1 lowercase letter\n- 1 number");
                    
                    return false;
                }else{
                    return true;
                }
            }
            
            function matchPass(){
                if(document.getElementById("pass").value !== document.getElementById("rePass").value){
                    alert("The password you entered does not match");
                    return false;
                }else{
                    return true;
                }
            }
            
            // check if survey object exist in local storage
            if('survey' in localStorage){
                var node = document.getElementById('createSurvey');
                while (node.hasChildNodes()) {
                    node.removeChild(node.firstChild);
                }
                
                // reconstruct the survey object from local storage
                var newSurvey = new Survey();
                newSurvey.reconstSurvey();
                // Display the survey
                newSurvey.displaySurvey();
                
                document.title = "Home - " + newSurvey.name;
                
                document.getElementById("topnav").innerHTML+='<li><a href="addQuestion.html">Add Question</a></li>';
                document.getElementById("topnav").innerHTML+='<li><a href="result.html">Result</a></li>';
                document.getElementById("topnav").innerHTML+='<li><a href="main.html" onclick="clearStorage()" class="right">Clear Survey</a></li>';
            }
        </script>
    </body>
</html>