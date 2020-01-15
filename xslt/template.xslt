<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

  <xsl:output method="html" indent="yes"/>
  <xsl:param name="TipoMenu" select="TipoMenu"></xsl:param>

  <xsl:template match="Portafolio">
    <html>
      <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <title>Coshipigua</title>
        <!-- Sentra Template https://templatemo.com/tm-518-sentra -->

        <meta name="description" content=""/>
        <!--<link rel="apple-touch-icon" href="apple-touch-icon.png"/>-->

        <!--QUITAR EL ../-->
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/bootstrap-theme.min.css"/>
        <link rel="stylesheet" href="css/fontAwesome.css"/>
        <link rel="stylesheet" href="css/light-box.css"/>
        <link rel="stylesheet" href="css/owl-carousel.css"/>
        <link rel="stylesheet" href="css/templatemo-style.css"/>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet"/>
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!--<script>
                    window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')
                  </script>-->
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>

        <!--<link rel="stylesheet" href="../css/bootstrap.min.css"/>
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css"/>
        <link rel="stylesheet" href="../css/fontAwesome.css"/>
        <link rel="stylesheet" href="../css/light-box.css"/>
        <link rel="stylesheet" href="../css/owl-carousel.css"/>
        <link rel="stylesheet" href="../css/templatemo-style.css"/>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet"/>
        <script src="../js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        -->
        <!--<script>
                    window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')
                  </script>-->
        <!--
        <script src="../js/vendor/bootstrap.min.js"></script>
        <script src="../js/plugins.js"></script>
        <script src="../js/main.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>-->
      </head>
      <body>
        <header class="nav-down responsive-nav hidden-lg hidden-md">
          <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!--/.navbar-header-->
          <div id="main-nav" class="collapse navbar-collapse">
            <nav>
              <ul class="nav navbar-nav">

                <!--INICIA FOREACH-->
                <xsl:for-each select="Navegacion/Opcion">
                  <xsl:choose>
                    <xsl:when test="$TipoMenu=@Id">
                      <li>
                        <a href="{@Url}" class="active-section">
                          <xsl:value-of select="@Texto"/>
                        </a>
                      </li>
                    </xsl:when>
                    <xsl:otherwise>
                      <li>
                        <a href="{@Url}">
                          <xsl:value-of select="@Texto"/>
                        </a>
                      </li>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:for-each>
                <!--FIN FOREACH-->                
              </ul>
            </nav>
          </div>

        </header>

        <div class="sidebar-navigation hidde-sm hidden-xs">
          <div class="logo">
            <a href="#">
              Sen<em>tra</em>
            </a>
          </div>
          <nav>
            <ul>
              <!--INICIA FOREACH-->
              <xsl:for-each select="Navegacion/Opcion" >
                <xsl:choose>
                  <xsl:when test="$TipoMenu=@Id">
                    <li>
                      <a href="{@Url}" class="active-section">
                        <span class="rect"></span>
                        <span class="circle"></span>
                        <xsl:value-of select="@Texto"/>
                      </a>
                    </li>
                  </xsl:when>
                  <xsl:otherwise>
                    <li>
                      <a href="{@Url}">
                        <span class="rect"></span>
                        <span class="circle"></span>
                        <xsl:value-of select="@Texto"/>
                      </a>
                    </li>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:for-each>
              <!--FIN FOREACH-->
            </ul>
          </nav>
          <ul class="social-icons">
            <li>
              <a href="https://www.facebook.com/coshipigua/" target="_blank">
                <i class="fa fa-facebook"></i>
              </a>
            </li>
            <li>
              <a href="https://twitter.com/coshipigua" target="_blank">
                <i class="fa fa-twitter"></i>
              </a>
            </li>
            <li>
              <a href="https://www.instagram.com/coshipigua/" target="_blank">
                <i class="fa fa-instagram"></i>
              </a>
            </li>
          </ul>
        </div>

        <div class="page-content">
          <xsl:choose>
            <xsl:when test="$TipoMenu=1">
              <xsl:call-template name="Destacados"></xsl:call-template>
            </xsl:when>
            <xsl:when test="$TipoMenu=2">
              <xsl:call-template name="Recientes"></xsl:call-template>
            </xsl:when>
            <xsl:when test="$TipoMenu=3">
              <xsl:call-template name="Acerca"></xsl:call-template>
            </xsl:when>
            <xsl:when test="$TipoMenu=4">
              <xsl:call-template name="Entradas"></xsl:call-template>
            </xsl:when>
            <xsl:when test="$TipoMenu=5">
              <xsl:call-template name="Contacto"></xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:call-template name="Inicio"></xsl:call-template>
            </xsl:otherwise>
          </xsl:choose>
          <section class="footer">
            <p>
              Copyright 2019 Con
              <xsl:value-of select="Emojis/Emoji"></xsl:value-of>
              <strong>Coshipigua</strong>
            </p>
          </section>
        </div>



        <!--<script>
            // Hide Header on on scroll down
            var didScroll;
            var lastScrollTop = 0;
            var delta = 5;
            var navbarHeight = $('header').outerHeight();

            $(window).scroll(function(event){
            didScroll = true;
            });

            setInterval(function() {
            if (didScroll) {
            hasScrolled();
            didScroll = false;
            }
            }, 250);

            function hasScrolled() {
            var st = $(this).scrollTop();

            // Make sure they scroll more than delta
            if(Math.abs(lastScrollTop - st) &lt;= delta)
            return;

            // If they scrolled down and are past the navbar, add class .nav-up.
            // This is necessary so you never see what is "behind" the navbar.
            if (st > lastScrollTop &amp;&amp; st > navbarHeight){
            // Scroll Down
            $('header').removeClass('nav-down').addClass('nav-up');
            } else {
            // Scroll Up
            if(st + $(window).height() &lt; $(document).height()) {
                    $('header').removeClass('nav-up').addClass('nav-down');
                }
            }
            
            lastScrollTop = st;
        }
          </script>-->

      </body>
    </html>
  </xsl:template>

  <xsl:template name="Inicio">
    <div class="slider">
      <div class="Modern-Slider content-section" id="top">
        <!-- Item -->
        <div class="item item-1">
          <div class="img-fill">
            <div class="image"></div>
            <div class="info">
              <div>
                <h1>
                  Beautiful Template<br>Sentra</br>
                </h1>
                <p>
                  Sentra is free Bootstrap CSS Template by templatemo website.<br>
                    Please share our site link to your friends.
                  </br>
                </p>
                <div class="white-button button">
                  <a href="#featured">Discover More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- // Item -->
        <!-- Item -->
        <div class="item item-2">
          <div class="img-fill">
            <div class="image"></div>
            <div class="info">
              <div>
                <h1>
                  Please tell <br>your friends</br>
                </h1>
                <p>
                  Support templatemo by sharing a link to your friends.
                  <br>
                    Thank you for helping us.
                  </br>
                </p>
                <div class="white-button button">
                  <a href="#featured">Share More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- // Item -->
        <!-- Item -->
        <div class="item item-3">
          <div class="img-fill">
            <div class="image"></div>
            <div class="info">
              <div>
                <h1>
                  Suspendisse suscipit<br>
                    nulla sed
                  </br>
                </h1>
                <p>
                  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices <br>
                    posuere cubilia Curae; Sed at massa turpis.
                  </br>
                </p>

                <div class="white-button button">
                  <a href="#featured">Learn More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- // Item -->
      </div>
    </div>
  </xsl:template>

  <xsl:template name="Destacados">
    <div class="page-content">
      <section id="featured" class="content-section">
        <div class="section-heading">
          <h1>
            <xsl:value-of select="Seccion/Titulo[@Id=1]/@Normal"/>
            <br>
              <em>
                <xsl:value-of select="Seccion/Titulo[@Id=1]/@Negritas"/>
              </em>
            </br>
          </h1>
          <p>
            <xsl:value-of select="Seccion/Titulo[@Id=1]/@Descripcion"/>
          </p>
        </div>
        <div class="section-content">
          <div class="owl-carousel owl-theme">
            <!--INICIO FOREACH-->
            <xsl:for-each select="Carrusel/Producto">
              <div class="item">
                <div class="image">
                  <img src="{Imagen}" alt=""/>
                  <!--<div class="featured-button button">
                    <a href="#projects">Continue Reading</a>
                  </div>-->
                </div>
                <div class="text-content">
                  <h4>
                    <xsl:value-of select="Nombre"/>
                  </h4>
                  <span>
                    <xsl:value-of select="Tecnica"/>
                  </span>
                  <p>
                    <xsl:value-of select="Descripcion"/>
                  </p>
                </div>
              </div>
            </xsl:for-each>
            <!--FIN FOREACH-->

          </div>
        </div>
      </section>
    </div>
  </xsl:template>

  <xsl:template name="Recientes">
    <section id="projects" class="content-section">
      <div class="section-heading">
        <!--ToDo-->
        <h1>
          Recent<br>
            <em>Projects</em>
          </br>
        </h1>
        <p>
          Praesent pellentesque efficitur magna,
          <br>
            sed pellentesque neque malesuada vitae.
          </br>
        </p>
      </div>
      <div class="section-content">
        <div class="masonry">
          <div class="row">
            <!--INICIO FOREACH-->
            <xsl:for-each select="Proyectos/Proyecto">
              <div class="item">
                <div class="{Bootstrap}">
                  <a href="{Imagen}" data-lightbox="image">
                    <img src="{Imagen}" alt="image 1"/>
                  </a>
                </div>
              </div>
            </xsl:for-each>
            <!--FIN FOREACH-->


          </div>
        </div>
      </div>
    </section>

  </xsl:template>

  <xsl:template name="Acerca">
    <section id="video" class="content-section">
      <div class="row">
        <div class="col-md-12">
          <div class="section-heading">
            <h1>
              <xsl:value-of select="substring(Seccion/Titulo[@Id=3]/@Normal,1,3)"/>
              <em>
                <xsl:value-of select="Seccion/Titulo[@Id=3]/@Negritas"/>
              </em>
              <xsl:value-of select="substring(Seccion/Titulo[@Id=3]/@Normal,3,11)"/>
            </h1>
            <p>
              <xsl:value-of select="Seccion/Titulo[@Id=3]/@Descripcion"/>
            </p>
          </div>
          <div class="text-content">
            <!--ToDo-->
            <p>In eget ipsum sed lorem vehicula luctus. Curabitur non dolor rhoncus, hendrerit justo sit amet, vestibulum turpis. Pellentesque id auctor tellus, vel ultricies augue. Duis condimentum aliquet blandit. Fusce rhoncus et eros ut pharetra. Phasellus convallis ultricies ligula ac gravida.</p>
          </div>
          <div class="accent-button button">
            <a href="#blog">Continue Reading</a>
          </div>
        </div>
        <div class="col-md-12">
          <!--ToDo-->
          <div class="box-video">
            <div class="bg-video" style="background-image: url(https://unsplash.imgix.net/photo-1425036458755-dc303a604201?fit=crop&amp;fm=jpg&amp;q=75&amp;w=1000);">
              <div class="bt-play">Play</div>
            </div>
            <div class="video-container">
              <iframe width="100%" height="520" src="https://www.youtube.com/embed/j-_7Ub-Zkow?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
            </div>
          </div>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template name="Entradas">
    <section id="blog" class="content-section">
      <div class="section-heading">
        <!--ToDo-->
        <h1>
          Blog<br>
            <em>Entries</em>
          </br>
        </h1>
        <p>
          Curabitur hendrerit mauris mollis ipsum vulputate rutrum.
          <br>
            Phasellus luctus odio eget dui imperdiet.
          </br>
        </p>
      </div>
      <div class="section-content">
        <div class="tabs-content">
          <div class="wrapper">
            <ul class="tabs clearfix" data-tabgroup="first-tab-group">
              <!--INICIA FOREACH-->
              <xsl:for-each select="Entradas/Mes">
                <li>
                  <a href="#{@Id}">
                    <xsl:value-of select="@Nombre"/>
                  </a>
                </li>
              </xsl:for-each>
              <!--TERMINA FOREACH-->
            </ul>
            <section id="first-tab-group" class="tabgroup">
              <!--INICIA FOREACH-->
              <xsl:for-each select="Entradas/Mes">
                <div id="{@Id}">
                  <ul>
                    <xsl:for-each select="Entrada">
                      <li>
                        <div class="item">
                          <img src="{Imagen}" alt=""/>
                          <div class="text-content">
                            <h4>
                              <xsl:value-of select="Titulo"/>
                            </h4>
                            <span>
                              <xsl:value-of select="Fecha"/>
                            </span>
                            <p>
                              <xsl:value-of select="Contenido"/>
                            </p>

                            <div class="accent-button button">
                              <!--Cambiar la refrencia-->
                              <a href="#contact">Continue Reading</a>
                            </div>
                          </div>
                        </div>
                      </li>
                    </xsl:for-each>
                    <!--TERMINA FOREACH-->
                  </ul>
                </div>
              </xsl:for-each>
              <!--TERMINA FOREACH-->






            </section>
          </div>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template name="Contacto">
    <section id="contact" class="content-section">
      <div id="map">

        <!-- How to change your own map point
                           1. Go to Google Maps
                           2. Click on your location point
                           3. Click "Share" and choose "Embed map" tab
                           4. Copy only URL and paste it within the src="" field below
                    -->
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1197183.8373802372!2d-1.9415093691103689!3d6.781986417238027!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfdb96f349e85efd%3A0xb8d1e0b88af1f0f5!2sKumasi+Central+Market!5e0!3m2!1sen!2sth!4v1532967884907" width="100%" height="400px" frameborder="0" style="border:0" allowfullscreen=""></iframe>
      </div>
      <div id="contact-content">
        <div class="section-heading">
          <h1>
            Contact<br>
              <em>Sentra</em>
            </br>
          </h1>
          <p>
            Curabitur hendrerit mauris mollis ipsum vulputate rutrum.
            <br>
              Phasellus luctus odio eget dui imperdiet.
            </br>
          </p>

        </div>
        <div class="section-content">
          <form id="contact" action="#" method="post">
            <div class="row">
              <div class="col-md-4">
                <fieldset>
                  <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required=""/>
                </fieldset>
              </div>
              <div class="col-md-4">
                <fieldset>
                  <input name="email" type="email" class="form-control" id="email" placeholder="Your email..." required=""/>
                </fieldset>
              </div>
              <div class="col-md-4">
                <fieldset>
                  <input name="subject" type="text" class="form-control" id="subject" placeholder="Subject..." required=""/>
                </fieldset>
              </div>
              <div class="col-md-12">
                <fieldset>
                  <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." required=""></textarea>
                </fieldset>
              </div>
              <div class="col-md-12">
                <fieldset>
                  <button type="submit" id="form-submit" class="btn">Send Message Now</button>
                </fieldset>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>
  </xsl:template>

</xsl:stylesheet>
