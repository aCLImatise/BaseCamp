class: CommandLineTool
id: ../../../sequana_taxonomy.cwl
inputs:
- id: welcome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: se_quan_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_taxonomy
