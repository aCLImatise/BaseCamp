class: CommandLineTool
id: vargeno.cwl
inputs:
- id: in_option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parameters
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
- vargeno
