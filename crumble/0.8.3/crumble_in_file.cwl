class: CommandLineTool
id: crumble_in_file.cwl
inputs:
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crumble
- in-file
