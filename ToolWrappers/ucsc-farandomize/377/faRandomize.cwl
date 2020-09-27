class: CommandLineTool
id: faRandomize.cwl
inputs:
- id: in_seed
  doc: ''
  type: string
  inputBinding:
    prefix: -seed
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_randomized_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- faRandomize
