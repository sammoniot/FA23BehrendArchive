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
    <html>
    <head>
        <title>List of People</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="archive.css" />
    </head>    
    <body>
        <h1>Behrend People</h1>
        <ul>Mary Behrend </ul>
        <ul>Ernst Behrend</ul>
        <ul>R.C. Reed</ul>
        <ul>Mr.Edwin Nick</ul>
        <ul>Bertram E. Claridge</ul>
        <ul> W. Pitt Gifford</ul>
        <ul>N.A. Carlson</ul>
        <ul>H.C. Mitchell</ul>
        <ul>G.R. Fryling</ul>
        <ul>Allyn Wright</ul>
        <ul>J.A. Zurn</ul>
        <ul>H.L.R. Emmet</ul>
        <ul>Ellis T. Knobloch</ul>
        <ul>Paul H. Henkel</ul>
        <ul>J.O. Keller</ul>
        <ul>Mr. Ferguson</ul>
        <h2>Purdue People</h2>
            Dr.A.A. Potter
        <h3>Hammermill People</h3>
            Betram E. Claridge
            Ernst Behrend
        <h4>Companies and Organizations</h4>
        <ul>Pennsylvania State University </ul>
        <ul>Hammermill Paper Company</ul>
        <ul>Purdue University</ul>
        <ul>Erie Advisory Board</ul>
        <ul>General Electric</ul>
        <ul>Erie Resistor Corporation</ul>
        <ul>Northern Equipment Company</ul>
        <ul>Reed Mfg. Company</ul>
        <ul>Zurn Mfg. Company </ul>
        <ul>Continental Rubber Works</ul>
        <ul>Erie Meter Systems</ul>
        <h3>Places!</h3>
        <ul>Erie,Pennsylvania</ul>
        <ul>Glenhill Farm</ul>
        <ul>Greenwhich,Conneticut</ul>
        <ul>Lafayette,Indiana</ul>
        <xsl:apply-templates select="descendant::body"/>
    </body>   
        
    </html>
    <xsl:template match="head">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
</xsl:stylesheet>

