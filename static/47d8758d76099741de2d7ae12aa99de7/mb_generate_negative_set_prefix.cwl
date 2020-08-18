class: CommandLineTool
id: ../../../mb_generate_negative_set_prefix.cwl
inputs:
- id: number
  doc: ''
  type: string
  inputBinding:
    prefix: --number
- id: width
  doc: ''
  type: string
  inputBinding:
    prefix: --width
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: mb_generate_negative_set
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-generate-negative-set
- prefix
