class: CommandLineTool
id: ../../../ctg2umdcontig.cwl
inputs:
- id: file_dot_ctg
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_dot_id_map
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: tigr
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ctg2umdcontig
