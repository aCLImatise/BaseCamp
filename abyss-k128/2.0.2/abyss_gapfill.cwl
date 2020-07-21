class: CommandLineTool
id: ../../../abyss_gapfill.cwl
inputs:
- id: min_align
  doc: the minimal alignment size [1]
  type: string
  inputBinding:
    prefix: --min-align
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-gapfill
