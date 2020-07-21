class: CommandLineTool
id: ../../../abyss_dida_OPTION.cwl
inputs:
- id: readlink
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-dida
- OPTION
