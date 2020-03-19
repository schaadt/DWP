<?php
include 'includes/connection.php';
include 'includes/users.php';
include 'includes/viewusers.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
    $users = new ViewUser();
    $users ->showAllUsers();
?>
</body>
</html>


