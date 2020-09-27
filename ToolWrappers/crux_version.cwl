class: CommandLineTool
id: crux_version.cwl
inputs:
- id: in_crux
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
- crux
- version
