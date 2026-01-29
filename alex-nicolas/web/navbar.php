<? session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <nav>
         <div class="nav">
            <a href="SARRERA.php">
               <img src="img/TechnoPlus.png" height="125" width="125" alt="SecondsAgo logo"></a>
            <form action="KATALOGOA.php" method="get" class="bilatzailea">
                <input type="text" name="keywords" placeholder="Bilatu produktuak..." />
                <button type="submit" name="search" value="1" >BILATU</button>
            </form>
               <a href="KATALOGOA.php">KATALOGOA</a>
            <a href="SARRERA.php">SARRERA</a>
              <a href="HASI SAIOA.php">HASI SAIOA</a>
            <a href="IZENA EMAN.php">FORMULARIOA</a>
            <img src="img/Reino Unido.jpg"  class="Ingles"alt="English logo">
            <a href="karritoa.php"><img src="img/saskia.png" alt="" height="50%" width="50%" class="saskia"></a>
            <div class="zenbaki-saskia">
                <span id="saskia">
                    <?= isset($_SESSION['saskia']) ? count($_SESSION['saskia']) : 0 ?> 
                </span>
            </div>
        </div>
        </nav>
</body>
</html>