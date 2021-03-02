class: CommandLineTool
id: sleep.cwl
inputs:
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_suffix
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sleep
