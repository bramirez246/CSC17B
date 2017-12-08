<!DOCTYPE html>
<html>
    <body>

        <?php
        include 'connect_to_server.php';
        
        // grab the email and password form the database
        $sql = "SELECT `email`, `password` FROM `bramirez246_48947`.`user_entity` AS `user_entity`";
        $result = $conn->query($sql);
        
        $failLogin = true;
        
        // check for email and password
        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                if(strtolower($row["email"]) === strtolower($_POST["email"])){
                    if($row["password"] === $_POST["password"]){
                        echo "
                        <script type=\"text/javascript\">
                            alert('Welcome back!');
                            window.location.replace('main.php');
                        </script>
                        ";

                        $uniqueEmail = false;
                    }
                }
            }
        } else {
            echo "0 results";
        }
        
        if($failLogin){
            echo "
            <script type=\"text/javascript\">
                alert('Username and/or Password Invalid!');
                window.location.replace('main.php');
            </script>
            ";
        }

        $conn->close();
        ?>

    </body>
</html>