<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Cars List</title>
            </head>
            <body>
                <h2>Cars Available</h2>

                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Make</th>
                        <th>Model</th>
                        <th>Year</th>
                        <th>Color</th>
                        <th>Price ($)</th>
                    </tr>

                    <xsl:for-each select="cars/car[number(price) &gt;=20000 and number(price) &lt;=25000]">
                        <tr>
                            <td><xsl:value-of select="make"/></td>
                            <td><xsl:value-of select="model"/></td>
                            <td><xsl:value-of select="year"/></td>
                            <td><xsl:value-of select="color"/></td>
                            <td><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
