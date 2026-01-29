<?php
session_start();
include_once "konexioa.php";

if (!isset($_SESSION['saskia']) || empty($_SESSION['saskia'])) {
    echo "<h1>Saskia hutsik dago</h1>";
    echo '<a href="katalogoa.php">⬅ Katalogora itzuli</a>';
    exit;
}

$ids = implode(",", array_keys($_SESSION['saskia']));
$sql = "SELECT id, izena, prezioa FROM produktuak WHERE id IN ($ids)";
$resultado = $conexion->query($sql);

$total = 0;
$tiket_text = "========= TIKET ============\n\n";

while ($p = $resultado->fetch_assoc()) {
    $id = $p['id'];
    $kantitatea = $_SESSION['saskia'][$id];
    $subtotal = $p['prezioa'] * $kantitatea;
    $total += $subtotal;

    $tiket_text .= $p['izena'] . " x" . $kantitatea . " = " . $subtotal . " €\n";
}

$tiket_text .= "\nGuztira: " . $total . " €\n";
$tiket_text .= "============================\n";

unset($_SESSION['saskia']);
?>

<!DOCTYPE html>
<html lang="eu">
<head>
    <meta charset="UTF-8">
    <title>Erosketa Osatua</title>
</head>
<body>
    <h1> Erosketa osatua!</h1>
    <p>Zure erosketaren tiket hau jaso dezakezu:</p>

    <form method="POST" action="tiket.php">
        <input type="hidden" name="tiketa_text" value="<?= htmlspecialchars($tiket_text) ?>">
        <button type="submit" name="deskargatu">Tiket deskargatu</button>
    </form>

    <br><a href="katalogoa.php">⬅ Katalogora itzuli</a>

<?php
if (isset($_POST['deskargatu']) && isset($_POST['tiketa_text'])) {
    $filename = "tiketa.txt";

    header('Content-Type: text/plain');
    header('Content-Disposition: attachment; filename="'.$filename.'"');
    echo $_POST['tiketa_text'];
    exit;
}
?>
</body>
</html>
