class: CommandLineTool
id: cbTool.cwl
inputs:
- id: cb_tool
  doc: matrix.mtx genes.tsv barcodes.tsv exprMatrix.tsv.gz - convert .mtx to .tsv.gz
    file
  type: string
  inputBinding:
    prefix: '- cbTool'
- id: cb_tool
  doc: mat1.tsv.gz mat2.tsv.gz exprMatrix.tsv.gz - concatenate expression matrices
  type: string
  inputBinding:
    prefix: '- cbTool'
- id: cb_tool
  doc: meta.tsv seurat/meta.tsv scanpy/meta.tsv newMeta.tsv - merge meta matrices
  type: string
  inputBinding:
    prefix: '- cbTool'
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
outputs: []
cwlVersion: v1.1
baseCommand:
- cbTool
