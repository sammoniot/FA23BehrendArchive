<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    
   <xsl:output method="xhtml"/>
    
    
    <xsl:template match="/">
        LIST OF PEOPLE IDS: 
        <ul>
        <xsl:for-each select=".//persName/@ref => sort() => distinct-values()">
          
           <li><xsl:value-of select="current()"/></li>
            
        </xsl:for-each>
        </ul>
        
        LIST OF PLACE IDS:
        <ul>
            <xsl:for-each select=".//placeName/@ref => sort() => distinct-values()">
                
                <li><xsl:value-of select="current()"/></li>
                
            </xsl:for-each>
        </ul>
        
        
        LIST OF ORG IDS:
        <ul>
            <xsl:for-each select=".//orgName/@ref => sort() => distinct-values()">
                
                <li><xsl:value-of select="current()"/></li>
                
            </xsl:for-each>
        </ul>
        
    </xsl:template>
    
</xsl:stylesheet>

