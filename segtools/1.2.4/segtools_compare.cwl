class: CommandLineTool
id: ../../../segtools_compare.cwl
inputs:
- id: edit_distance
  doc: Measure the base-wise edit distance between the two specified segmentations
  type: boolean
  inputBinding:
    prefix: --edit-distance
- id: quick
  doc: Compute values only for one chromosome.
  type: boolean
  inputBinding:
    prefix: --quick
- id: quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- segtools-compare
