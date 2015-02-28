<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <xsl:apply-templates />
  </xsl:template>

  <xsl:template match="COLLECTION">
    <bookstore>
      <xsl:apply-templates />
    </bookstore>
  </xsl:template>

  <xsl:template match="BOOK">
    <book>
      <xsl:attribute name="title">
        <xsl:value-of select="TITLE"/>
      </xsl:attribute>
    <xsl:text>
    </xsl:text>
      <author>
        <xsl:value-of select="AUTHOR"/>        
      </author>
      <xsl:text>
    </xsl:text>
      <price>10.25</price>
    <xsl:text>
  </xsl:text>
    </book>
  </xsl:template>
</xsl:stylesheet>
