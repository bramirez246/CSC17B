<!DOCTYPE html>
<html>
    <body>

        <?php
        $servername = "209.129.8.7";
        $username = "bramirez246";
        $password = "Yee246";
        $dbname = "bramirez246_48947";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        ?> 

    </body>
</html>