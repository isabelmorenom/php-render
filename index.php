<?php
require_once "conexion.php";

$query = "SELECT table_name FROM information_schema.tables WHERE table_schema='public'";
$result = $conn->query($query);

echo "<h2>Tablas disponibles en la base de datos:</h2>";
foreach ($result as $row) {
    echo "<p>📄 " . htmlspecialchars($row['table_name']) . "</p>";
}
?>
