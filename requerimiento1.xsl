<?xml version="1.0" encoding="UTF-8"?>
<!-- Requerimiento 1 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/ite">
        <html>
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>EDIX</title>
                <link rel="stylesheet" type="text/css" href="./css/requerimiento1.css" />
            </head>
            <body>
                <!-- header -->
                <header>
                    <!-- logo -->
                    <div class="contenedor-header">
                        <div class="logo">
                            <a href="{@web}" target="_black">
                                <img src="./img/logo-edix.png">
                                    <xsl:value-of select="@web" />
                                </img>
                            </a>
                            <h1>
                                <xsl:value-of select="ite/@nombre" />
                            </h1>
                        </div>
                        <!-- titulo -->
                        <div class="titulo">
                            <h1>
                                <xsl:value-of select="@nombre" />
                            </h1>
                        </div>
                        <!-- datos-contacto -->
                        <div class="datos-contacto">
                            <h2>
                                Teléfono de contacto:
                                <xsl:value-of select="telefono" />
                                <br />
                                Empresa:
                                <xsl:value-of select="empresa" />
                                <br />
                                Página web:
                                <a href="{@web}" target="_black">
                                    <xsl:value-of select="@web" />
                                </a>
                            </h2>
                        </div>
                    </div>
                </header>
                <!-- nav -->
                <nav>
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
                </nav>
                <div class="contenedor-central">
                    <!-- section -->
                    <section>
                        <!-- tabla-jefatura -->
                        <table class="tabla-jefatura" border="2">
                            <caption>
                                <h3>Jefatura</h3>
                            </caption>
                            <tr>
                                <th>Director</th>
                                <th>Despacho</th>
                            </tr>
                            <tr>
                                <td>
                                    <xsl:value-of select="director/nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="director/despacho" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <xsl:value-of select="jefe_estudios/nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="jefe_estudios/despacho" />
                                </td>
                            </tr>

                        </table>
                        <!-- tabla-profesorado -->
                        <table class="tabla-profesorado" border="2">
                            <caption>
                                <h3>Profesores</h3>
                            </caption>
                            <tr>
                                <th scope="row">Curso</th>
                                <th>ID</th>
                            </tr>
                            <xsl:for-each select="profesores/profesor">
                                <tr>
                                    <td>
                                        <xsl:value-of select="id" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="nombre" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                        <!-- tabla-ciclos -->
                        <table class="tabla-ciclos" border="2">
                            <caption>
                                <h3>Ciclos</h3>
                            </caption>
                            <tr>
                                <th scope="row">Curso</th>
                                <th>ID</th>
                                <th>Grado</th>
                                <th>Año</th>
                            </tr>
                            <!-- bucle para recorrer los ciclos y traer valores -->
                            <xsl:for-each select="ciclos/ciclo">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="@id" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="grado" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="decretoTitulo/@año" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>

                    </section>
                    <!-- aside -->
                    <aside>

                        <!-- formulario de contacto -->
                        <form>
                            <h2>
                                Formulario para consultas
                            </h2>
                            <label for="nombre">Nombre: </label>
                            <input type="text" name="nombre" placeholder="Escribe tu nombre y Apellidos" />
                            <br></br>
                            <label for="email">Email: </label>
                            <input type="email" name="email" placeholder="Escribe tu email" />
                            <br></br>
                            <label for="ciclo">Ciclo: </label>
                            <select name="ciclo">
                                <option value="consulta" selected="Eligir ciclo"></option>
                                <!-- bucle para recorrer los ciclos y trae sus valores -->
                                <xsl:for-each select="ciclos/ciclo">
                                    <xsl:element name="option">
                                        <xsl:atribute name="value">
                                            <xsl:value-of select="@id" />
                                        </xsl:atribute>
                                        <xsl:value-of select="nombre" />
                                    </xsl:element>
                                </xsl:for-each>
                            </select>
                            <br></br>
                            <label for="comentarios">Comentarios: </label>
                            <textarea rows="5px" name="comentarios" />
                            <div class="botones-form">
                                <button type="summit">Enviar datos</button>
                                <button type="reset">Limpiar formulario</button>
                            </div>
                        </form>
                    </aside>
                </div>
                <!-- footer -->
                <footer>
                    <p>Copyrigth @ 2022 Edix</p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>