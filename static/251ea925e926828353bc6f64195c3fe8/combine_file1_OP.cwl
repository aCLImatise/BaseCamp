class: CommandLineTool
id: combine_file1_OP.cwl
inputs:
- id: file_2
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- combine
- file1
- OP
