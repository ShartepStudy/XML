<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
      <xsl:apply-templates />
    </xsl:template>

  <xsl:template match="CookBook">
    <h1> COOK BOOK
      <xsl:apply-templates />
    </h1>
  </xsl:template>

  <xsl:template match="Reciept">
    <h2>
      Reciept   
      <xsl:apply-templates />
    </h2>
  </xsl:template>

  <xsl:template match="Name">
    <h3>
      Name: <xsl:value-of select="."/><BR/>
    </h3>
  </xsl:template>

  <xsl:template match="Components">
    <h4>
      Components: <xsl:value-of select="."/><BR/>
      <xsl:apply-templates />
    </h4>
  </xsl:template>

  <xsl:template match="Components/Component">
    <h5>
      Name: 
      <xsl:value-of select="@" />
    </h5>
  </xsl:template>


</xsl:stylesheet>
