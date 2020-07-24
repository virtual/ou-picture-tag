<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
<!ENTITY nbsp   "&#160;">
<!ENTITY lsaquo   "&#8249;">
<!ENTITY rsaquo   "&#8250;">
<!ENTITY laquo  "&#171;">
<!ENTITY raquo  "&#187;">
<!ENTITY copy   "&#169;">
<!ENTITY apos   "&#39;">
<!ENTITY quot   "&#34;">
<!ENTITY mdash   "&#8212;">
<!ENTITY lsquo   "&#8216;">
<!ENTITY middot "&#183;">
<!ENTITY ldquo "&#x0201C;">
<!ENTITY rdquo "&#x0201D;">
]>
<xsl:stylesheet version="3.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:xs="http://www.w3.org/2001/XMLSchema"
				xmlns:ou="http://omniupdate.com/XSL/Variables"
				xmlns:fn="http://omniupdate.com/XSL/Functions"
				xmlns:ouc="http://omniupdate.com/XSL/Variables"
				exclude-result-prefixes="xs ou fn ouc">

	<xsl:import href="template-matches.xsl"/>
	<xsl:import href="functions.xsl"/> 
  
	<!-- Other snippets -->	

	<!-- Build picture snippet -->
	<xsl:template match="table[@class='ou-build-picture']">
		<xsl:call-template name="build-picture-tag">			
			<xsl:with-param name="image" select="tbody/tr/td[1]/descendant::img" /> 
		</xsl:call-template>
	</xsl:template>

	<xsl:template name="build-picture-tag"> 
		<xsl:param name="image"/> 
		<xsl:param name="image-path" select="$image/@src" /> 
		<xsl:variable name="image-ext" select="substring-after($image-path,'.')"/>
		<xsl:variable name="image-filename" select="ou:get-filename-modifier($image-path)" />
		<picture>
			<source srcset="{replace($image-path, $image-filename, concat('xl.', $image-ext))}" media="(min-width: 992px)" />
			<source srcset="{replace($image-path, $image-filename, concat('lg.', $image-ext))}" media="(min-width: 768px)" />
			<source srcset="{replace($image-path, $image-filename, concat('md.', $image-ext))}" media="(min-width: 480px)" />
			<xsl:apply-templates select="$image" /> 
		</picture> 
	</xsl:template>
	  
</xsl:stylesheet>
