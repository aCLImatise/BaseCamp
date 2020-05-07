class: CommandLineTool
id: arb_ntree.cwl
inputs:
- id: directory
  doc: -> prompt for databases inside directory
  type: Directory
  inputBinding:
    position: 0
- id: file_mask
  doc: -> also prompt for DB, but more specific (e.g. "prot*.arb")
  type: File
  inputBinding:
    position: 1
- id: execute
  doc: => execute macro 'macroname' after startup
  type: string
  inputBinding:
    prefix: --execute
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_ntree
