<?php
session_start();
include_once "konexioa.php";

/* =======================
   AÑADIR AL CARRITO
======================= */
if (isset($_POST['produktua_id'])) {
    $id = (int)$_POST['produktua_id'];

    if (!isset($_SESSION['saskia'])) {
        $_SESSION['saskia'] = [];
    }

    $_SESSION['saskia'][] = $id;
}

/* =======================
   FILTROS
======================= */
$mota = $_GET['mota'] ?? '';
$keywords = '';

if (isset($_GET['search'])) {
    $keywords = trim($_GET['keywords'] ?? '');
}

/* =======================
   SQL
======================= */
$sql = "SELECT id, izena, prezioa, argazkia, mota FROM produktuak WHERE 1=1";
$params = [];
$types = "";

if ($keywords !== '') {
    $sql .= " AND izena LIKE ?";
    $params[] = "%$keywords%";
    $types .= "s";
}

if ($mota !== '') {
    $sql .= " AND mota = ?";
    $params[] = $mota;
    $types .= "s";
}

if (!empty($params)) {
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param($types, ...$params);
    $stmt->execute();
    $resultado = $stmt->get_result();
} else {
    $resultado = $conexion->query($sql);
}
?>

<!DOCTYPE html>
<html lang="eu">
<head>
    <meta charset="utf-8">
    <title>Katalogoa</title>

    <link rel="stylesheet" href="CSS_Erronka.css">
    <link rel="icon" type="image/png" href="SECONDS AGO LOGO.png">

    <link rel="stylesheet" href="img/slider-argazkiak/slick.css">
    <link rel="stylesheet" href="img/slider-argazkiak/slick-theme.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>

<body>

<header>
    <?php include_once "navbar.php"; ?>
</header>

<script>
$(document).ready(function(){

    $(".slider").slick({
        centerMode: true,
        centerPadding: "60px",
        slidesToShow: 3,
        responsive: [
            { breakpoint: 768, settings: { arrows: false, centerMode: true, centerPadding: "40px", slidesToShow: 3 }},
            { breakpoint: 480, settings: { arrows: false, centerMode: true, centerPadding: "40px", slidesToShow: 1 }}
        ]
    });

    $(".erosi").click(function(){
        let zenbakia = parseInt($("#saskia").text());
        $("#saskia").text(zenbakia + 1);
    });

    $(".produktuak").hover(
        function() { $(this).css("border", "3px solid white"); },
        function() { $(this).css("border", "2px solid transparent"); }
    );
});
</script>

<!-- SLIDER -->
<div class="slider">
    <img src="img/slider-argazkiak/1.jpg">
    <img src="img/slider-argazkiak/2.jpg">
    <img src="img/slider-argazkiak/3.jpg">
    <img src="img/slider-argazkiak/4.webp">
</div>

<!-- FILTROA -->
<form method="GET">
    <label>Mota</label>
    <select name="mota">
        <option value="">Guztiak</option>
        <option value="Ordenagailua" <?= ($mota=="Ordenagailua")?'selected':'' ?>>Ordenagailua</option>
        <option value="Tableta" <?= ($mota=="Tableta")?'selected':'' ?>>Tableta</option>
        <option value="Mugikorra" <?= ($mota=="Mugikorra")?'selected':'' ?>>Mugikorra</option>
        <option value="Pantaila" <?= ($mota=="Pantaila")?'selected':'' ?>>Pantaila</option>
        <option value="Inprimagailua" <?= ($mota=="Inprimagailua")?'selected':'' ?>>Inprimagailua</option>
    </select>
    <button type="submit">Aplikatu</button>
</form>

<!-- PRODUKTUAK -->
<figure>
<?php
if ($resultado && $resultado->num_rows > 0) {
    while ($producto = $resultado->fetch_assoc()) {

        $izena   = htmlspecialchars($producto['izena'], ENT_QUOTES, 'UTF-8');
        $prezioa = htmlspecialchars($producto['prezioa'], ENT_QUOTES, 'UTF-8');
        $id      = (int)$producto['id'];

        $img = !empty($producto['argazkia'])
            ? htmlspecialchars($producto['argazkia'], ENT_QUOTES, 'UTF-8')
            : 'img/produktuak/default.jpg';

        echo '<div class="div1">';
        echo   '<img class="produktuak" src="'.$img.'" alt="'.$izena.'">';
        echo   '<figcaption>'.$izena.' - '.$prezioa.' €</figcaption>';
        echo   '<div class="button">';
        echo     '<form method="POST">';
        echo       '<input type="hidden" name="produktua_id" value="'.$id.'">';
        echo       '<button type="submit" class="erosi">Erosi</button>';
        echo     '</form>';
        echo   '</div>';
        echo '</div>';
    }
} else {
    echo "<p>Ez daude produktuak.</p>";
}
?>
</figure>

<footer>
    <h3>ENPRESA KOLABORATIBOAK</h3>
    <div class="sarrera-grid">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Dell_Logo.png">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Lenovo_Global_Corporate_Logo.png/960px-Lenovo_Global_Corporate_Logo.png">
        <img class="logo-empresa" src="img/Apple logo.png">
        <img class="logo-empresa" src="img/Microsoft logo.png">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Fujitsu-Logo.svg/1024px-Fujitsu-Logo.svg.png">
        <img class="logo-empresa" src="https://images.icon-icons.com/2699/PNG/512/acer_logo_icon_169649.png">
        <img class="logo-empresa" src="img/ASUS logo.png">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Ingram_logo.jpg/1200px-Ingram_logo.jpg">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/IBM_logo.svg/960px-IBM_logo.svg.png">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Intel_logo_2023.svg/2560px-Intel_logo_2023.svg.png">
    </div>
</footer>

</body>
</html>
