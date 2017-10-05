<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	version='1.0'>

	<!-- http://docbook.sourceforge.net/release/xsl/current/ -->


	<!-- extensions error fix: https://bugzilla.redhat.com/show_bug.cgi?id=505364 -->
	<xsl:import href="/Users/bas/docbook-xsl-1.79.1/fo/docbook.xsl"/>

	<!-- xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/ -->

	<xsl:param name="body.font.family">Palatino</xsl:param>
	<xsl:param name="title.font.family">Palatino</xsl:param>
	<xsl:param name="monospace.font.family">Courier</xsl:param>

	<xsl:param name="fop1.extensions" select="1" />
	<xsl:param name="variablelist.as.blocks" select="1" />

	<xsl:param name="header.rule">0</xsl:param>
	<xsl:param name="footer.rule">0</xsl:param>

	<xsl:param name="page.height.portrait">9.68in</xsl:param>
	<xsl:param name="page.width.portrait">7.44in</xsl:param>

	<xsl:param name="page.margin.inner">0.8in</xsl:param>
	<xsl:param name="page.margin.outer">0.5in</xsl:param>
	<xsl:param name="page.margin.top">0.35in</xsl:param>
	<xsl:param name="region.before.extent">0.17in</xsl:param>
	<xsl:param name="body.margin.top">0.69in</xsl:param>
	<xsl:param name="region.after.extent">0.35in</xsl:param>
	<xsl:param name="page.margin.bottom">0.50in</xsl:param>
	<xsl:param name="body.margin.bottom">0.40in</xsl:param>
	<xsl:param name="double.sided">1</xsl:param>

	<xsl:param name="hyphenate">false</xsl:param>

	<xsl:attribute-set name="root.properties">
		<xsl:attribute name="text-align">left</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="monospace.verbatim.properties"
		use-attribute-sets="verbatim.properties">
		<xsl:attribute name="font-family">
			<xsl:value-of select="$monospace.font.family"/>
		</xsl:attribute>
		<xsl:attribute name="font-size">
			<xsl:value-of select="$body.font.master * 0.9"/>
			<xsl:text>pt</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="background-color">#ebebeb</xsl:attribute>
	</xsl:attribute-set>

	<xsl:template match="processing-instruction('hard-pagebreak')">
		<fo:block break-before='page'/>
	</xsl:template>

</xsl:stylesheet>
