<?php
include("include/config.php");

// ดึงข้อมูลสินค้าและประเภทสินค้า
$sql = "SELECT * FROM product";
$stmt = $dbh->prepare($sql);
$stmt->execute();
$products = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="th">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>ร้านค้าออนไลน์</title>
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/css/main.css" rel="stylesheet">
  <style>
    html, body {
      height: 100%;
    }
    .wrapper {
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }
    .content {
      flex: 1;
    }
    .footer {
      background: #343a40;
      color: white;
      text-align: center;
      padding: 15px 0;
      margin-top: auto;
    }
    .header-title {
      color:rgb(255, 252, 92); /* เปลี่ยนสีของชื่อร้านค้า */
    }
  </style>
</head>
<body>
  <div class="wrapper">
    <header class="py-3 text-white text-center" style="background: #222;">
      <div class="container d-flex justify-content-between align-items-center">
        <h1 class="m-0 header-title">ร้านขายแร่ออนไลน์</h1>
        <nav>
          <a href="index.php" class="text-white me-3">Home</a>
          <a href="login.php" class="text-white">Login</a>
        </nav>
      </div>
    </header>

    <main class="container my-5 content">
    <h2 class="text-start mb-4">สินค้าทั้งหมด</h2>
      <div class="table-responsive">
        <table class="table table-striped table-bordered text-center">
          <thead class="table-dark">
            <tr>
              <th>รหัสสินค้า</th>
              <th>ชื่อสินค้า</th>
              <th>รหัสประเภท</th>
              <th>ราคาทุน</th>
              <th>ราคาขาย</th>
              <th>รูปภาพ</th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($products as $product): ?>
              <tr>
                <td><?= htmlspecialchars($product['pro_id']) ?></td>
                <td><?= htmlspecialchars($product['pro_name']) ?></td>
                <td><?= htmlspecialchars($product['cat_id']) ?></td>
                <td><?= number_format($product['pro_price'], 2) ?> ฿</td>
                <td><?= number_format($product['pro_cost'], 2) ?> ฿</td>
                <td>
                  <?php if (!empty($product['pro_img'])): ?>
                    <img src="<?= htmlspecialchars($product['pro_img']) ?>" alt="<?= htmlspecialchars($product['pro_name']) ?>" class="img-thumbnail" style="width: 80px; height: auto;">
                  <?php else: ?>
                    <span>ไม่มีรูป</span>
                  <?php endif; ?>
                </td>
              </tr>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    </main>

    <footer class="footer">
      <p>&copy; <?= date('Y') ?> ร้านค้าออนไลน์. </p>
    </footer>
  </div>

  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>