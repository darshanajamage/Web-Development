<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
<html>
<body>
 <h2>book list </h2>
 <table border="1">
 <tr>
  <th>Name</th>
  <th>Author</th>
  <th>price</th>
  
 </tr>
<xsl:for-each select="library/book[@id='2']">
<tr>
 <td><xsl:value-of select="name"/></td>
 <td><xsl:value-of select="author"/></td>
 <td><xsl:value-of select="price"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>