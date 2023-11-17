<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs math xd"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes"
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Mary Behrend Dedication Speech</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" type="text/css" href="archive.css" />
            </head>
            <body>
                <h1>Mary Behrend Dedication Speech</h1>
                <h2>October 30, 1948</h2>
                <p>
                <xsl:apply-templates select="descendant::body"/> 
                </p>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="head">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
    
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>   
    </xsl:template>
   
<xml:template match="p">
    <xsl:for-each select="//placeName">
    <li>
        <xsl:value-of select="@ref"/>
    </li>
    </xsl:for-each>
</xml:template>
    
</xsl:stylesheet>