class: CommandLineTool
id: stag_autoschema.pl.cwl
inputs:
- id: in_parser_formatformat_one
  doc: "|parser FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl\
    \ module\nxml assumed as default"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_dtd
  doc: exports schema as DTD
  type: boolean?
  inputBinding:
    prefix: -dtd
- id: in_writer_formatformat_one
  doc: "|writer FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl\
    \ module,\nOR DTD\nThe default is sxpr\nnote that stag schemas exported as xml\
    \ will be invalid xml, due to\nthe use of symbols *, +, ? in the node names"
  type: boolean?
  inputBinding:
    prefix: -w
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stag-autoschema.pl
