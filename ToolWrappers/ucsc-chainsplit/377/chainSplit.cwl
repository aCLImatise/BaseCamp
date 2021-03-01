class: CommandLineTool
id: chainSplit.cwl
inputs:
- id: in_split_query_default
  doc: '- Split on query (default is on target)'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_lump
  doc: Lump together so have only N split files.
  type: string?
  inputBinding:
    prefix: -lump
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chainSplit
