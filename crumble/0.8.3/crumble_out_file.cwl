class: CommandLineTool
id: crumble_out_file.cwl
inputs:
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crumble
- out-file
