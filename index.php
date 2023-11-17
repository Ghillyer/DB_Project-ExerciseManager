<!-- index.php -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Stylesheet1.css">

    <title>Exercise Management System</title>
</head>
<body>

    <header>
        <h1>Exercise Management System</h1>
    </header>
    
        <!-- Navigation -->
        <nav class="menu">
        <ul>
            <li><a href="dashboard.php">Dashboard</a></li>
            <li><a href="progresstracker.php">Progress Tracker</a></li>
            <!-- Add more tabs as needed -->
        </ul>
    </nav>

    <section>
        <h2>Login</h2>
        <form method="post" action="login.php">
            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <button type="submit">Login</button>
        </form>

        <div class="signup-link">
            <p>Don't have an account? <a href="signup.php">Sign up</a></p>
        </div>
    </section>

</body>
</html>
