class: CommandLineTool
id: bedCommonRegions_file2.cwl
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
- id: file_n
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedCommonRegions
- file2
