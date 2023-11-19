<?php
session_start();
require_once('db.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password_verify = $_POST['password_verify'];
    $age = $_POST['age'];
    $gender = $_POST['gender'];
    $fitnessGoals = $_POST['fitnessGoals'];
    $medicalHistory = $_POST['medicalHistory'];

    $sql_check_email = "SELECT * FROM users WHERE ContactInformation = ?";
    $stmt_check_email = $conn->prepare($sql_check_email);
    $stmt_check_email->bind_param("s", $email);
    $stmt_check_email->execute();
    $result_check_email = $stmt_check_email->get_result();

    if ($result_check_email->num_rows > 0) {
        $error = "An account with this email already exists. Please use a different email or login.";
    } else {

        if ($password != $password_verify) {
            $error = "Passwords do not match. Please try again.";
        } else {
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

            $sql_insert_user = "INSERT INTO users (Name, ContactInformation, Password, Age, Gender, FitnessGoals, MedicalHistoryAndRestrictions) VALUES (?, ?, ?, ?, ?, ?, ?)";
            $stmt_insert_user = $conn->prepare($sql_insert_user);

            $stmt_insert_user->bind_param("sssssss", $name, $email, $hashedPassword, $age, $gender, $fitnessGoals, $medicalHistory);

            if ($stmt_insert_user->execute()) {
                $_SESSION['user_id'] = $stmt_insert_user->insert_id;
                header("Location: dashboard.php");
                exit;
            } else {
                $error = "Error during registration. Please try again.";
            }

            $stmt_insert_user->close();
        }
    }

    $stmt_check_email->close();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Stylesheet1.css">

    <title>Exercise Management System - Signup</title>
</head>

<body>

    <header>
        <h1>Exercise Management System</h1>
    </header>

    <section class="signup-section">
        <h2>Signup</h2>
        <?php if (isset($error)) echo "<p>$error</p>"; ?>
        <form method="post" action="">
            <label>Name:</label>
            <input type="text" name="name" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <label>Verify Password:</label>
            <input type="password" name="password_verify" required>

            <label>Age:</label>
            <input type="text" name="age" required>

            <label>Gender:</label>
            <select name="gender" required>
                <option value="Female">Female</option>
                <option value="Male">Male</option>
                <option value="Nonbinary">Nonbinary</option>
                <option value="Prefer not to state">Prefer not to state</option>
            </select>

            <label>Fitness Goals:</label>
            <select name="fitnessGoals" required>
                <option value="Muscle gain">Muscle gain</option>
                <option value="Weight loss">Weight loss</option>
                <option value="General fitness">General fitness</option>
            </select>

            <label>Medical History & Restrictions *not required*:</label>
            <input type="text" name="medicalHistory">

            <button type="submit">Signup</button>
        </form>

        <div class="signup-link">
            <p>Already have an account? <a href="login.php">Login</a></p>
        </div>
    </section>

</body>
</html>
