class: CommandLineTool
id: chainSplit.cwl
inputs:
- id: split
  doc: query (default is on target)
  type: string
  inputBinding:
    prefix: '- Split'
- id: lump
  doc: Lump together so have only N split files.
  type: string
  inputBinding:
    prefix: -lump
outputs: []
cwlVersion: v1.1
baseCommand:
- chainSplit
