<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Katalogoa</title>
    <link rel="stylesheet" href="CSS_Erronka.css" />
    <link rel="icon" type="image/png" href="SECONDS AGO LOGO.png"/>
    <link rel="stylesheet" type="text/css" href="img/slider-argazkiak/slick-theme.css"/>
    <link rel="stylesheet" type="text/css" href="img/slider-argazkiak/slick.css"/>
  </head>
  <body>
    <header>
        <?php include_once "navbar.php"; ?>
    </header>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

    <script>
    $(document).ready(function(){
      $(".slider").slick({
        centerMode: true,
        centerPadding: "60px",
        slidesToShow: 3,
        responsive: [
          { breakpoint: 768, settings: { arrows: false, centerMode: true, centerPadding: "40px", slidesToShow: 3 } },
          { breakpoint: 480, settings: { arrows: false, centerMode: true, centerPadding: "40px", slidesToShow: 1 } }
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

    <div class="slider">
      <img src="img/slider-argazkiak/1.jpg" alt="">
      <img src="img/slider-argazkiak/2.jpg" alt="">
      <img src="img/slider-argazkiak/3.jpg" alt="">
      <img src="img/slider-argazkiak/4.webp" alt="">
    </div>

    <figure>
    <?php
      // KONEXIOA
      include_once "konexioa.php";

      // PRODUKTU TAULAREN KONTSULTA
      $resultado = $conexion->query("SELECT * FROM produktu");

      if($resultado && $resultado->num_rows > 0){
        while($producto = $resultado->fetch_assoc()){
          echo '<div class="div1">';
          echo '<img class="produktuak" src="'. $producto['argazkia'] .'" alt="'. $producto['izena'] .'">';
          echo '<figcaption>'. $producto['izena'] .' '. $producto['prezioa'] .'€</figcaption>';
          echo '<div class="button">';
          echo '<button class="erosi">Erosi</button>';
          echo '</div>';
          echo '</div>';
        }
      } else {
        echo "<p>ez daude proktuak.</p>";
      }
    ?>
    </figure>

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
