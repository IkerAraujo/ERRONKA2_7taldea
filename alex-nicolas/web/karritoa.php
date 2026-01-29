<?php
session_start();
include_once "konexioa.php";

if (isset($_POST['kendu_id'])) {
    $id = (int)$_POST['kendu_id'];
    if (isset($_SESSION['saskia'][$id])) {
        unset($_SESSION['saskia'][$id]);
    }
}

if (isset($_POST['produktua_id'])) {
    $id = (int)$_POST['produktua_id'];
    if (!isset($_SESSION['saskia'])) $_SESSION['saskia'] = [];

    if (isset($_SESSION['saskia'][$id])) {
        $_SESSION['saskia'][$id]++;
    } else {
        $_SESSION['saskia'][$id] = 1;
    }
}

if (!isset($_SESSION['saskia']) || empty($_SESSION['saskia'])) {
    echo "<h1>Saskia hutsik dago</h1>";
    echo '<a href="katalogoa.php">Katalogora itzuli</a>';
    exit;
}

$ids = implode(",", array_keys($_SESSION['saskia']));
$sql = "SELECT id, izena, prezioa FROM produktuak WHERE id IN ($ids)";
$resultado = $conexion->query($sql);

$total = 0;
?>

<!DOCTYPE html>
<html lang="eu">
<head>
    <meta charset="UTF-8">
    <title>Saskia</title>
</head>
<body>
    <h1>Saskia</h1>

    <table border="1" cellpadding="5" cellspacing="0">
        <thead>
            <tr>
                <th>Produktua</th>
                <th>Kantitatea</th>
                <th>Prezioa</th>
                <th>Subtotal</th>
                <th>Ekintza</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($p = $resultado->fetch_assoc()): 
                $id = $p['id'];
                $kantitatea = $_SESSION['saskia'][$id];
                $subtotal = $p['prezioa'] * $kantitatea;
                $total += $subtotal;
            ?>
            <tr>
                <td><?= htmlspecialchars($p['izena']) ?></td>
                <td><?= $kantitatea ?></td>
                <td><?= $p['prezioa'] ?> €</td>
                <td><?= $subtotal ?> €</td>
                <td>
                    <form method="POST" style="display:inline;">
                        <input type="hidden" name="kendu_id" value="<?= $id ?>">
                        <button type="submit">Kendu</button>
                    </form>
                </td>
            </tr>
            <?php endwhile; ?>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3">Guztira</td>
                <td colspan="2"><?= $total ?> €</td>
            </tr>
        </tfoot>
    </table>

    <form method="POST" action="tiket.php">
        <button type="submit" name="ordainketa">Ordaindu</button>
    </form>

    <p><a href="katalogoa.php">Katalogora itzuli</a></p>
</body>
</html>
