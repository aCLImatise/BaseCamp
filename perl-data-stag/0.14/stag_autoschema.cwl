class: CommandLineTool
id: stag_autoschema.pl.cwl
inputs:
- id: p
  doc: '|parser FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module xml assumed as default'
  type: boolean
  inputBinding:
    prefix: -p
- id: dtd
  doc: exports schema as DTD
  type: boolean
  inputBinding:
    prefix: -dtd
- id: w
  doc: '|writer FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module, OR DTD The default is sxpr note that stag schemas exported as xml will
    be invalid xml, due to the use of symbols *, +, ? in the node names'
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-autoschema.pl
