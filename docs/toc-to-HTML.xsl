<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math xd"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes"
        include-content-type="no" indent="yes"/>
    
    <xsl:variable name="teiCollection" as="document-node()+" select="collection('tei/?select=*.xml')"/>
    
    
    
    <xsl:template match="/">
       
               <html>
                   <head>
                       <title>Document Archive</title>
                       <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                       <link rel="stylesheet" type="text/css" href="archive.css" />
                   </head>
                   <body>
                       <h1>Documents about the founding of Behrend College</h1>
                       <h2>Archive directory</h2>
                       
                       
                       <ul>
                           <xsl:for-each select="$teiCollection">
                               <xsl:sort select=".//msContents//date/@when ! xs:date(.)"/>
                               
                               <li><a href="output/{base-uri() ! tokenize(., '/')[last()] ! substring-before(., '.xml')}.html"><xsl:apply-templates select=".//titleStmt/title"/></a>: 
                               <xsl:apply-templates select=".//msContents//date"/>
                               
                               </li>
                               
                               
                           </xsl:for-each>

                       </ul>
                     
                     
                     
                     
                   </body>
               </html>
 
       
    </xsl:template>
    
   
    
</xsl:stylesheet>