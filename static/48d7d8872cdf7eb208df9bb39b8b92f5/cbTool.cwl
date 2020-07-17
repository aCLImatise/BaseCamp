class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cbTool.cwl
inputs:
- id: debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: fix_dots
  doc: try to fix R's mangling of various special chars to '.' in the cell IDs
  type: boolean
  inputBinding:
    prefix: --fixDots
- id: first
  doc: "only for metaCat: names of fields to order first, comma- sep, e.g. disease,age.\
    \ Not cellId, that's always the first field"
  type: string
  inputBinding:
    prefix: --first
- id: del
  doc: 'only for metaCat: names of fields to remove'
  type: string
  inputBinding:
    prefix: --del
- id: mtx_two_tsv_vertical_line_mat_cat_vertical_line_meta_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cbTool
