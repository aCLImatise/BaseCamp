class: CommandLineTool
id: ../../../chainSplit.cwl
inputs:
- id: split_query_default
  doc: '- Split on query (default is on target)'
  type: boolean
  inputBinding:
    prefix: -q
- id: lump
  doc: Lump together so have only N split files.
  type: string
  inputBinding:
    prefix: -lump
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chainSplit
