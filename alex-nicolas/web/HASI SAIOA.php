<?php
session_start();

include_once "konexioa.php"; 

$mensaje = "";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["posta_elektronikoa"];
    $pasahitza = $_POST["pasahitza"];

    $sql = "SELECT id, pass FROM erabiltzaile WHERE gmail = ?";
    $stmt = $conexion->prepare($sql);

    if (!$stmt) {
        die("Error en la consulta: " . $conexion->error);
    }

    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows === 1) {
        $user = $result->fetch_assoc();

        if ($pasahitza === $user["pass"]) {
            $_SESSION["user_id"] = $user["id"];

            header("Location: SARRERA.php");
            exit;
        } else {
            $mensaje = "Pasahitza okerra.";
        }
    } else {
        $mensaje = "Ez da aurkitu erabiltzailea.";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login - Erabiltzaileak</title>
    <link rel="stylesheet" href="CSS_Erronka.css">
</head>
<body>

<header>
    <?php include_once "navbar.php"; ?>
</header>

<main>
    <h2>Login Erabiltzaileak</h2>

    <?php if($mensaje) echo "<div class='mensaje'>$mensaje</div>"; ?>

    <form action="" method="post">
        <div>
            <label for="posta_elektronikoa">Posta elektronikoa</label>
            <input type="email" id="posta_elektronikoa" name="posta_elektronikoa" placeholder="example@gmail.com" required>
        </div>

        <div>
            <label for="pasahitza">Pasahitza</label>
            <input type="password" id="pasahitza" name="pasahitza" required>
        </div>

        <div class="button">
            <button type="reset">Ezabatu</button>
            <button type="submit">Sartu</button>
        </div>
    </form>
</main>

<footer>
    <h3>ENPRESA KOLABORATIBOAK</h3>
      <div class="sarrera-grid">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Dell_Logo.png" alt="Dell">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Lenovo_Global_Corporate_Logo.png/960px-Lenovo_Global_Corporate_Logo.png" alt="Lenovo">
        <img class="logo-empresa" src="img/Apple logo.png" alt="Apple">
        <img class="logo-empresa" src="img/Microsoft logo.png" alt="Microsoft">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Fujitsu-Logo.svg/1024px-Fujitsu-Logo.svg.png" alt="Fujitsu">
        <img class="logo-empresa" src="https://images.icon-icons.com/2699/PNG/512/acer_logo_icon_169649.png" alt="Acer">
        <img class="logo-empresa" src="img/ASUS logo.png" alt="Asus">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Ingram_logo.jpg/1200px-Ingram_logo.jpg" alt="Ingram">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/IBM_logo.svg/960px-IBM_logo.svg.png" alt="IBM">
        <img class="logo-empresa" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Intel_logo_2023.svg/2560px-Intel_logo_2023.svg.png" alt="Intel">
      </div>

      <h3>SARE SOZIALAK</h3>
      <a href="#INSTAGRAM"><img src="img/Instagram logo.png" height="60" width="60" alt="Instagram"/></a>
      <a href="#YOUTUBE"><img src="img/YouTube logo.png" height="60" width="60" alt="YouTube"/></a>
      <a href="#X"><img src="img/X logo.png" height="60" width="60" alt="X"/></a>

      <div>
        <h3>INFORMAZIO GEHIGARRIA</h3>
        <p><a href="#KOKAPENA">KOKAPENA</a></p>
        <p><a href="#KONTAKTUAK">KONTAKTUAK</a></p>
        <p><a href="#ITZULKETA POLITIKA">ITZULKETA POLITIKA</a></p>
        <p><a href="#SALMETA BALDINTZAK">SALMETA BALDINTZAK</a></p>
        <p><a href="#LEGE OHARRA ETA COOKIEN POLITIKA">LEGE OHARRA ETA COOKIEN POLITIKA</a></p>
      </div>
</footer>

</body>
</html>
