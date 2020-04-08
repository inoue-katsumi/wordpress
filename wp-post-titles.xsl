<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:wp="http://wordpress.org/export/1.2/"
                version='1.0'>
  <xsl:output method='text' encoding='utf-8'/>
  <!-- Set tab as character delimiter -->
  <xsl:variable name="delimiter" select="'&#009;'"/>

  <xsl:template match="/">
    <xsl:apply-templates select="/rss/channel/item[wp:post_type = 'post']"/>
  </xsl:template>

  <xsl:template match="/rss/channel/item">
    <!--  <xsl:if test="string-length(pubDate)!=0">-->
    <!--  <xsl:if test="wp:status!='draft' and wp:status!='publish'">-->
    <xsl:if test="wp:status='publish'">
      <xsl:value-of select="title/text()"/>
      <xsl:value-of select="$delimiter"/>
      <!--<xsl:text>: </xsl:text>-->
      <xsl:value-of select="link/text()"/>
      <xsl:value-of select="$delimiter"/>
      <xsl:value-of select="wp:post_date/text()"/>
      <xsl:text>&#10;</xsl:text>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
