class: CommandLineTool
id: fqc.cwl
inputs:
- id: file_1
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
- fqc
