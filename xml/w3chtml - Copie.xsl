<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output indent="yes"/>
<testsuite name="HTML" >
    <xsl:template match="messages">
            <xsl:for-each select="messages/error">
                <testcase>TEEEEEST</testcase>
            </xsl:for-each>  
    </xsl:template>
</testsuite>
</xsl:stylesheet>
