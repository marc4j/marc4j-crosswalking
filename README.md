# marc4j-book

This project contains the original sources for *Crosswalking: Processing MARC in XML Environments with MARC4J*. The sources are published under the Creative Commons license.

The book is written using DocBook Light. Output can be generated using the DocBook XSL stylesheets.

### HTML outpout

To create a single HTML output document using `xsltproc`:

```
xsltproc --output build/crosswalking.html ~/docbook-xsl-1.79.1/html/docbook.xsl book.xml
```

Where `~/docbook-xsl-1.79.1/html/docbook.xsl` should refer to the DocBook XSL stylesheet for HTML output.

### PDF output

To create a PDF document using `fop` you can run the provided script:

```
./run-fop.sh
```

### PDF font configuration

The font configuration is in `cfg.xml`:

```
<configuration>
  <base>.</base>
  <renderers>
    <renderer mime="application/pdf">
       <fonts>
          <!-- register all the fonts found in a directory -->
          <directory>/Library/Fonts</directory>
          <auto-detect/>
       </fonts>
    </renderer>
  </renderers>
</configuration>
```

### Stylesheet reference

The `fo-stylesheet.xsl` contains a reference to the DocBook XSL files:

```
<xsl:import href="/Users/bas/docbook-xsl-1.79.1/fo/docbook.xsl"/>
```
