class: CommandLineTool
id: stag_findsubtree.pl.cwl
inputs:
- id: in_parser_formatformat_one
  doc: "|parser FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl\
    \ module\nxml assumed as default"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_writer_formatformat_one
  doc: "|writer FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl\
    \ module"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_node
  doc: the name of the node/element
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stag-findsubtree.pl
