class: CommandLineTool
id: ../../../stag_findsubtree.pl.cwl
inputs:
- id: parser_format_format
  doc: '|parser FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module xml assumed as default'
  type: boolean
  inputBinding:
    prefix: -p
- id: writer_format_format
  doc: '|writer FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module'
  type: boolean
  inputBinding:
    prefix: -w
- id: node
  doc: the name of the node/element
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-findsubtree.pl
