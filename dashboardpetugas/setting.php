<?php
require_once('../backend/config.php');

// Pastikan user sudah login
session_start();
if (!isset($_SESSION["user_id"])) {
    header("Location: ../login.php");
    exit;
}

// Ambil ID pengguna yang akan diupdate dari parameter URL
if (!isset($_GET['id'])) {
    // Redirect jika parameter id tidak ditemukan
    header("Location: daftaruser.php");
    exit;
}
$id_pengguna = $_GET['id'];

// Ambil data pengguna berdasarkan ID
$query_pengguna = "SELECT * FROM user WHERE id = ?";
$stmt_pengguna = $conn->prepare($query_pengguna);
$stmt_pengguna->bind_param("i", $id_pengguna);
$stmt_pengguna->execute();
$result_pengguna = $stmt_pengguna->get_result();

// Periksa apakah data pengguna ditemukan
if($result_pengguna->num_rows === 0) {
    // Redirect jika data pengguna tidak ditemukan
    header("Location: daftaruser.php");
    exit;
}

$pengguna = $result_pengguna->fetch_assoc();

// Handle submit form update
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Update data pengguna
    $query_update = "UPDATE user SET email=?, username=?, password=? WHERE id=?";
    $stmt_update = $conn->prepare($query_update);
    // Jika password tidak diubah, gunakan password lama
    if(empty($password)){
        $stmt_update->bind_param("sssi", $email, $username, $pengguna['password'], $id_pengguna);
    } else {
        // Jika password diubah, gunakan password baru yang di-hash
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);
        $stmt_update->bind_param("sssi", $email, $username, $hashed_password, $id_pengguna);
    }
    if ($stmt_update->execute()) {
        // Redirect ke halaman daftar pengguna setelah update berhasil
        header("Location: ../login.php");
        exit;
    } else {
        // Redirect ke halaman error jika update gagal
        header("Location: error.php");
        exit;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Pengguna || Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://kit.fontawesome.com/de8de52639.js" crossorigin="anonymous" rel="stylesheet">
    <style>
        body {
            background-image: url("../assets/bckground.png");
            height: 100vh;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8); /* Warna latar belakang dengan opasitas 80% */
            border-radius: 10px; /* Membuat sudut elemen melengkung */
            padding: 20px; /* Padding untuk konten di dalamnya */
        }
    </style>
</head>
<body>
<div class="container mt-4">
    <h2 style="text-shadow: 0 0 5px cyan; color:black">Update Pengguna</h2>
    <form action="setting.php?id=<?= $pengguna['id']; ?>" method="POST">
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" value="<?= isset($pengguna['email']) ? $pengguna['email'] : ''; ?>">
        </div>
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" value="<?= isset($pengguna['username']) ? $pengguna['username'] : ''; ?>">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Masukkan password baru jika ingin mengubah">
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
