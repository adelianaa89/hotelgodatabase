<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Reservasi</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">

    <div class="container mt-5">
        <div class="card shadow-lg p-4">
            <h2 class="text-center text-primary">Tambah Reservasi</h2>
            <form action="create.php" method="POST">
                <div class="mb-3">
                    <label class="form-label">Kode Tamu</label>
                    <input type="number" name="kode_tamu" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Check-In</label>
                    <input type="date" name="cek_in" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Check-Out</label>
                    <input type="date" name="cek_out" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Kode Staff</label>
                    <input type="number" name="kode_staff" class="form-control" required>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Tambah Reservasi</button>
                </div>
            </form>
        </div>
    </div>

</body>
</html>

