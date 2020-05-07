class: CommandLineTool
id: stag_findsubtree.pl.cwl
inputs:
- id: node
  doc: the name of the node/element
  type: string
  inputBinding:
    position: 0
- id: p
  doc: '|parser FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module xml assumed as default'
  type: boolean
  inputBinding:
    prefix: -p
- id: w
  doc: '|writer FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module'
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-findsubtree.pl
