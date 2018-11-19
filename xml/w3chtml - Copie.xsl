<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:output indent="yes"/>

    <xsl:template match="messages">
            <xsl:for-each select="error">
                <testsuite name="{current-grouping-key()}">
                </testsuite>
            </xsl:for-each>  
    </xsl:template>

</xsl:stylesheet>