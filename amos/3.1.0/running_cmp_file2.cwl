class: CommandLineTool
id: running_cmp_file2.cwl
inputs:
- id: file_1
  doc: ''
  type: File
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
- running-cmp
- file2
