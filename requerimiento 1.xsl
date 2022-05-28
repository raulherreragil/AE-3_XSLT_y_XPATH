<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="css/main.css" />
                <title>Intituto tecnológico Edix</title>
            </head>
            <body>
                <header>
                    <div class="logo">
                        <img src="img/edix-edix-formacion.png"></img>
                        <h1>
                            <xsl:value-of select="ite/@nombre" />
                        </h1>
                    </div>
                    <div class="menu">
                        <ul>
                            <li>
                                <a href="#">Equipo</a>
                            </li>
                            <li>
                                <a href="#">Cursos</a>
                            </li>
                            <li>
                                <a href="#">Contacto</a>
                            </li>
                        </ul>
                    </div>
                </header>
                <div class="contenido">
                    <div class="tabla">
                        <div class="nombre">Profesores</div>
                        <table class="equipo">
                            <tr>
                                <th>Nombre</th>
                                <th>Id</th>
                            </tr>
                            <xsl:for-each select="/ite/profesores/profesor">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nomnbre" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="id" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                    <div class="tabla">
                        <div class="nombre">Cursos</div>
                        <table class="cursos">
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Grado</th>
                                <th>Año decreto</th>
                            </tr>
                             
                        </table>
                    </div>
                </div>
                <footer>
                    <p>Copyrigth @ 2022 Edix</p>
                    <p>Privacidad</p>
                    <p>Navegación></p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>