class: CommandLineTool
id: mltree.cwl
inputs:
- id: rate_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mltree
