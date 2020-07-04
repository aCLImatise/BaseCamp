class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/faCmp.cwl
inputs:
- id: soft_mask
  doc: '- use the soft masking information during the compare Differences will be
    noted if the masking is different.'
  type: boolean
  inputBinding:
    prefix: -softMask
- id: sort_name
  doc: '- sort input files by name before comparing'
  type: boolean
  inputBinding:
    prefix: -sortName
- id: peptide
  doc: '- read as peptide sequences'
  type: boolean
  inputBinding:
    prefix: -peptide
- id: a_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- faCmp
