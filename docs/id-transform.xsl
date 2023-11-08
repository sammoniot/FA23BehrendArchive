<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    
    <xsl:template match="*[not(name() = 'p') and not(name() = 'mentioned')][@n]">
        <xsl:element name="{current() ! name()}">
            <xsl:attribute name="ref">
                <xsl:value-of select="@n"/>
            </xsl:attribute> 
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="mentioned">
        <persName ref="{@n}">
            
            <xsl:apply-templates/>
        </persName>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>