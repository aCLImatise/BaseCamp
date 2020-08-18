class: CommandLineTool
id: ../../../maf2hal.cwl
inputs:
- id: maf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- maf2hal
