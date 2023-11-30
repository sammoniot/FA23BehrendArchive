<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
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
                <title><xsl:apply-templates select=".//titleStmt/title"/></title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" type="text/css" href="archive.css" />
            </head>
            <body>
                <h1><xsl:apply-templates select=".//titleStmt/title"/></h1>
                <h2><xsl:apply-templates select=".//msContents//date"/></h2>
                <section class="readingView">
                <xsl:apply-templates select="descendant::body"/> 
                </section>
                  <hr/>
                  <section class="list">
                    <xsl:apply-templates select="descendant::p" mode="list"/>
                </section>
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
    
    <xsl:template match="persName">
        <span class="persName"><xsl:apply-templates/></span>
    </xsl:template>
   
<xml:template match="p" mode="list">
    <!--Not working properly for some reason -->
    <xsl:for-each select=".//placeName">
    <ul>
        <xsl:value-of select="@ref"/>
    </ul>
    </xsl:for-each>
</xml:template>
    
    
    
</xsl:stylesheet>