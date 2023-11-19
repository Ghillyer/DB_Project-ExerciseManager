<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit;
}

require_once('db.php');
$userID = $_SESSION['user_id'];

$sql = "SELECT * FROM users WHERE UserID = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $userID);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();
$stmt->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Stylesheet1.css">

    <title>Exercise Management System - Dashboard</title>
</head>

<body>

    <header>
        <h1>Exercise Management System</h1>
    </header>

    <nav class="menu">
        <ul>
            <li><a href="dashboard.php">Dashboard</a></li>
            <li><a href="progresstracker.php">Progress Tracker</a></li>
        </ul>
    </nav>

    <section class="dashboard-section">
        <h2>Welcome to the Dashboard <?php echo $user['Name']; ?>!</h2>
        <div class="user-details">
            <p>User Contact Information: <?php echo $user['ContactInformation']; ?></p>
            <p>Name: <?php echo $user['Name']; ?></p>
        </div>

        <a href="logout.php">Logout</a>
    </section>

</body>

</html>
