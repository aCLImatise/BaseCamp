class: CommandLineTool
id: sfs_code_ITERATIONS.cwl
inputs:
- id: n_pop
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: iterations
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sfs_code
- ITERATIONS
