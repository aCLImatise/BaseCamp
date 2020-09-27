class: CommandLineTool
id: mapDIA.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parameter
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
cwlVersion: v1.1
baseCommand:
- mapDIA
