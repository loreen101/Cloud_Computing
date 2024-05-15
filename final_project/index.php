<!DOCTYPE html>
<html>
    <head>
        <title> Cloud Final Project </title>
        <link rel="stylesheet" href="style.css">
    </head>

    

    <body>

        <main class="table">
            
            <section class="table_header">
                Students
            </section>

            <section class="table_body">

            <?php
                # to connect php apache server to mysql server 
                $connect = mysqli_connect(
                    'mysql', # name of container
                    'php-db', # username
                    'nada', # password
                    'php-db' # database name 
                );

                if ($connect->connect_erro){
                    die("Connection failed: " . $connect->connect_error);
                }

                # the name of table we made
                $table_name = "Student";

                # it gets all the data that is inside the database table
                $query = "SELECT * FROM $table_name";

                # mysqli_query performs query against database 
                $response = mysqli_query($connect , $query);

                
                # while loop through database
                # mysqli_fetch_asoc is takes rows as arrays and we can access the values through the cloumn's names 
                if ($response->num_rows > 0) {
                    echo "<table>
                    <tr>
                    <th> ID </th>
                    <th> Name </th>
                    <th> CGPA </th>
                    <th> Age </th>
                    <th> Phone Number </th>
                    <th> Email </th>
                    <th> Favourite Color </th>
                    </tr>";

                    // output data of each row
                    while($i = $response->fetch_assoc()) {
                        echo "<tr>
                        <td>" . $i["id"]. "</td>
                        <td>" . $i["name"]. "</td>
                        <td>" . $i["CGPA"]. "</td>
                        <td>" . $i["age"]. "</td>
                        <td>" . $i["phone_number"]. "</td>
                        <td>" . $i["email"]. "</td>
                        <td>" . $i["favorite_color"]. "</td>
                        </tr>";
                    }
                    echo "</table>";
                } 
                else {
                    echo "0 results";
                }
                
                $connect->close();
                
            ?>
            </section>
        </main>
        
    </body>
</html>