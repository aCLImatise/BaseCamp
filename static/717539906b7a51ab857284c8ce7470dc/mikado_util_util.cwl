class: CommandLineTool
id: ../../../mikado_util_util.cwl
inputs:
- id: mikado
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: util
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mikado
- util
- util
