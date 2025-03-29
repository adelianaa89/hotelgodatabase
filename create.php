<?php
include "../config/db.php"; // Panggil koneksi database
if (!$conn) {
    die("Koneksi database gagal!");
} else {
    echo "Koneksi berhasil!";
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $kode_tamu = $_POST['kode_tamu'];
    $cek_in = $_POST['cek_in'];
    $cek_out = $_POST['cek_out'];
    $kode_staff = $_POST['kode_staff'];
    $status = 'Pending'; // Default status

    $sql = "INSERT INTO reservasi (Kode_Tamu, Cek_In, Cek_Out, Status_Reservasi, Kode_Staff) 
            VALUES ('$kode_tamu', '$cek_in', '$cek_out', '$status', '$kode_staff')";

    if ($conn->query($sql) === TRUE) {
        echo "Reservasi berhasil ditambahkan!";
        echo "<br><a href='form_create.php'>Tambah Lagi</a>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>
