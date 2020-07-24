<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet>
<xsl:stylesheet version="3.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:ou="http://omniupdate.com/XSL/Variables"
	xmlns:fn="http://omniupdate.com/XSL/Functions"
	xmlns:ouc="http://omniupdate.com/XSL/Variables"
	exclude-result-prefixes="ou xsl xs fn ouc">

	<!-- Other functions -->

  <!-- 	Get the filename of the given path -->
	<xsl:function name="ou:get-filename">
		<xsl:param name="str"/>
		<xsl:value-of select="subsequence(reverse(tokenize($str, '/')), 1, 1)"/>
	</xsl:function>
	
	<!-- 	Get the modifer (text after the last hyphen, e.g. "sm.jpg") of a filename -->
	<xsl:function name="ou:get-filename-modifier">
		<xsl:param name="str"/> 
		<xsl:value-of select="subsequence(reverse(tokenize($str, '-')), 1, 1)"/>
	</xsl:function>
</xsl:stylesheet>
