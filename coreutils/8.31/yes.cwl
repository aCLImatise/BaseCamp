class: CommandLineTool
id: ../../../yes.cwl
inputs:
- id: in_string
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- yes
