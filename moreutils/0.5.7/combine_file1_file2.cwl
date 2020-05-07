class: CommandLineTool
id: combine_file1_file2.cwl
inputs:
- id: op
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_2
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- combine
- file1
- file2
