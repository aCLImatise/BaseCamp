class: CommandLineTool
id: extract_matrix.py.cwl
inputs:
- id: in
  doc: feature aligner file
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: output matrix
  type: string
  inputBinding:
    prefix: --out
- id: columns
  doc: Which columns are written
  type: string[]
  inputBinding:
    prefix: --columns
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_matrix.py
