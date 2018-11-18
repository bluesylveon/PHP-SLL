<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:output indent="yes"/>

    <xsl:template match="tests">
        <testsuites>
            <xsl:for-each-group select="*" group-by="local-name()">
                <testsuite name="{current-grouping-key()}">
                    <xsl:for-each   select="current-group()">
                        <testcase classname="{current-grouping-key()}"/>
                    </xsl:for-each>
                </testsuite>
            </xsl:for-each-group>
        </testsuites>   
    </xsl:template>

</xsl:stylesheet>