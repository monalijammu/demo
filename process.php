<?php 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Initialize an array to store errors
    $errors = [];  // Correct initialization

    // Validation functions (server-side)
    function validateInput($value, $fieldName) {
        if (empty(trim($value))) {
            global $errors;
            $errors[$fieldName] = "$fieldName is required";
            return false;
        }
        return true;
    }

    function validateSelect($value, $fieldName) {
        if (empty($value)) {
            global $errors;
            $errors[$fieldName] = "Please select an option for $fieldName";
            return false;
        }
        return true;
    }

    // Sanitize input data
    $attrition_workmen = htmlspecialchars($_POST["attrition_workmen"]);
    $attrition_junior_middle = htmlspecialchars($_POST["attrition_junior_middle"]);
    $attrition_senior = htmlspecialchars($_POST["attrition_senior"]);
    $absenteeism_workmen = htmlspecialchars($_POST["absenteeism_workmen"]);
    $training_programs = htmlspecialchars($_POST["training_programs"]);
    $attendance_percentage = htmlspecialchars($_POST["attendance_percentage"]);
    $job_descriptions = $_POST["job_descriptions"];
    $pms_process = $_POST["pms_process"];
    $pms_followed = $_POST["pms_followed"];
    $performance_communicated = $_POST["performance_communicated"];

    // Perform validation
    validateInput($attrition_workmen, "Attrition % in workmen category");
    validateInput($attrition_junior_middle, "Attrition % in junior / middle management");
    validateInput($attrition_senior, "Attrition % in senior management");
    validateInput($absenteeism_workmen, "Absenteeism % of workmen category");
    validateInput($training_programs, "Number of Training programs conducted for workmen category");
    validateInput($attendance_percentage, "Attendance percentage of workmen for the Training programs against 100%");
    validateSelect($job_descriptions, "Job descriptions");
    validateSelect($pms_process, "PMS process");
    validateSelect($pms_followed, "PMS followed");
    validateSelect($performance_communicated, "Performance communicated");

    // If there are errors, handle them
    if (!empty($errors)) {
        echo "Errors:\n";
        foreach ($errors as $error) {
            echo "- $error\n";
        }
    } else {
        // Database connection details
        $servername = "localhost";
        $username = "root"; // Update with your username
        $password = "1234567890"; // Update with your password
        $dbname = "hr"; // Update with your database name

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Prepare and bind
        $stmt = $conn->prepare("INSERT INTO hr (
            attrition_workmen,
            attrition_junior_middle,
            attrition_senior,
            absenteeism_workmen,
            training_programs,
            attendance_percentage,
            job_descriptions,
            pms_process,
            pms_followed,
            performance_communicated
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        
        if ($stmt === false) {
            die("Error preparing statement: " . $conn->error);
        }

        $stmt->bind_param(
            "ssssssssss",
            $attrition_workmen,
            $attrition_junior_middle,
            $attrition_senior,
            $absenteeism_workmen,
            $training_programs,
            $attendance_percentage,
            $job_descriptions,
            $pms_process,
            $pms_followed,
            $performance_communicated
        );

        if ($stmt->execute()) {
            if ($conn->affected_rows > 0) {
                echo '<div style="text-align: center;">';
                echo '<img src="submit.gif" alt="Submitting..." style="display: block; margin: 0 auto;">'; // Center the GIF
                echo '<strong>Record submitted</strong>'; // Bold text
                echo '</div>';

              
            } else {
                echo "Error: " . $stmt->error;
            }
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
        $conn->close();
    }
}
?>
