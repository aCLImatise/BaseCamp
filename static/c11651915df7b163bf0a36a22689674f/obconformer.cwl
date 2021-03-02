class: CommandLineTool
id: obconformer.cwl
inputs:
- id: in_n_steps
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_geom_steps
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obconformer
