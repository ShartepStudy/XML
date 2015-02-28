<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

  <xsl:key name="dep" match="item" use="@dep"/>
  
    <xsl:template match="items">
      <html lang="en" xmlns="http://www.w3.org/1999/xhtml">
        <head>
          <meta charset="utf-8" />
          <title>sdesdesd</title>
        </head>
        <body>
          <xsl:apply-templates />
        </body>
      </html>
    </xsl:template>

  <xsl:template match="item">
    <xsl:if test="not(@dep = preceding-sibling::item/@dep)">
      <h1>
        <xsl:value-of select ="@dep"/>
      </h1>

      <ul>
        <xsl:apply-templates mode="second" select="key('dep', @dep)"/>
      </ul>
    </xsl:if>
  </xsl:template>

  <xsl:template match="item" mode="second">
    <li>
      <xsl:value-of select="text()"/>
    </li>
  </xsl:template>
</xsl:stylesheet>
