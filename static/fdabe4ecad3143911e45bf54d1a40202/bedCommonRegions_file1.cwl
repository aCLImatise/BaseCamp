class: CommandLineTool
id: bedCommonRegions_file1.cwl
inputs:
- id: file_2
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_n
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedCommonRegions
- file1
