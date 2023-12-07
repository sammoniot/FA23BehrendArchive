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
       <xsl:for-each select="$teiCollection">
           <xsl:result-document method="xhtml" html-version="5" omit-xml-declaration="yes"
               include-content-type="no" indent="yes" href="output/{base-uri() ! tokenize(., '/')[last()] ! substring-before(., '.xml')}.html">
               
               <html>
                   <head>
                       <title><xsl:apply-templates select=".//titleStmt/title"/></title>
                       <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                       <link rel="stylesheet" type="text/css" href="../archive.css" />
                   </head>
                   <body>
                      <section class="document"> 
                          <!-- METADATA ON THE OUTSIDE (top or bottom) -->
                          <h1><xsl:apply-templates select=".//titleStmt/title"/></h1>
                       <h2><xsl:value-of select="base-uri() ! tokenize(., '/')[last()] ! substring-before(., '_')"/></h2>
                       
                     <div class="flex">     
                      <figure>
                          <img class="archive" src="../images/MB_BoardMtg_1949-11-07/MB_BoardMtg_1949-11-07_pg1.jpg"/>
                          
                          <img class="archive" src="../images/MB_BoardMtg_1949-11-07/MB_BoardMtg_1949-11-07_pg2.jpg"/>
                          <img class="archive" src="../images/MB_BoardMtg_1949-11-07/MB_BoardMtg_1949-11-07_pg3.jpg"/>
                          
                      </figure>
                         
                         
                         <section class="rv">   
                         
                           <xsl:apply-templates select="descendant::body"/> 
                       </section>
                      </div>
                      
                      
                      </section>
                   </body>
               </html>
               
               
               
               
           </xsl:result-document>  
  
       </xsl:for-each>
        
        
        
        
        
       
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
    
    <xsl:template match="persName | placeName | orgName">
        
        <span class="{name()}"><xsl:apply-templates/></span>
        
    </xsl:template>
    
</xsl:stylesheet>