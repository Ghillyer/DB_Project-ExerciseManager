<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Stylesheet1.css">
    <title>User Progress Tracker</title>
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

    <h2>User Progress Tracker</h2>
    <p>User ID: <?php echo $_SESSION['user_id']; ?></p>
    <a href="logout.php">Logout</a>

</body>

</html>
