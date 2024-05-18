<?php
require("connection.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST["id"];

    $stmt = $con->prepare("SELECT no_resi FROM transaksi_resi_pengiriman WHERE id_resi = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($row = $result->fetch_assoc()) {
        $response = ["no_resi" => $row["no_resi"]];
        echo json_encode($response);
    } else {
        echo json_encode(["no_resi" => "Not Found"]);
    }

    $stmt->close();
}
?>