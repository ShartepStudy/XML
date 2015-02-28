<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" omit-xml-declaration="yes"/>

  <xsl:template match="/">
    <xsl:for-each select="COLLECTION/BOOK">
      <xsl:apply-templates select="TITLE"/>
      <xsl:apply-templates select="AUTHOR"/>
      <xsl:apply-templates select="PUBLISHER"/>
      <BR/>
      <!-- add this -->
    </xsl:for-each>
  </xsl:template>

  <xsl:include href="part1.xslt"/>
  
  <xsl:template match="TITLE">
    <DIV STYLE="color:blue">
      Title: <xsl:value-of select="."/>
    </DIV>
  </xsl:template>

 
</xsl:stylesheet>
