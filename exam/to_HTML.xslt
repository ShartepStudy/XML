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
      Reciept # <xsl:value-of select="@id"/> 
      <xsl:apply-templates />
    </h2>
  </xsl:template>

  <xsl:template match="Name">
    <h3>
      Name: <xsl:value-of select="."/><BR/>
    </h3>
  </xsl:template>

  <xsl:template match="Photo">
    <img>
      <xsl:attribute name="src">
        <xsl:value-of select="."/>
      </xsl:attribute> 
    </img>
  </xsl:template>
  
  <xsl:template match="Components">
    <h4>
      Components: <xsl:value-of select="."/><BR/>
      <xsl:apply-templates />
    </h4>
  </xsl:template>

  <xsl:template match="Components/Component">
    <h5>
      Name: <xsl:value-of select="@Name"/>,
      Count <xsl:value-of select="@Count"/><xsl:value-of select="@UnitsType"/>
    </h5>
  </xsl:template>

  <xsl:template match="CookingMethod">
    <h4>Cooking method: <br/>  
      Difficult: <xsl:value-of select="@Difficult"/><br/>
      Cooking Time: <xsl:value-of select="@Time"/><br/>
      Discription: <xsl:value-of select="."/>
    </h4>
  </xsl:template>

  <xsl:template match="Portions">
    <h4>Count of portions: <xsl:value-of select="@Count"/></h4>
  </xsl:template>

  <xsl:template match="CaloricContent">
    Caloric content - <xsl:value-of select="@Count"/><xsl:value-of select="@Unit"/>
    <xsl:apply-templates />
  </xsl:template>

  <xsl:template match="CaloricContent/Proteins">
    <h5>Proteins - <xsl:value-of select="."/><xsl:value-of select="@Unit"/></h5>
  </xsl:template>

  <xsl:template match="CaloricContent/Fats">
    <h5> Fats - <xsl:value-of select="."/><xsl:value-of select="@Unit"/></h5>
  </xsl:template>

  <xsl:template match="CaloricContent/Carbs">
    <h5>Carbs - <xsl:value-of select="."/><xsl:value-of select="@Unit"/></h5>
  </xsl:template>

</xsl:stylesheet>
