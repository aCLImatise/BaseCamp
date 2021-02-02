class: CommandLineTool
id: faCmp.cwl
inputs:
- id: in_soft_mask
  doc: "- use the soft masking information during the compare\nDifferences will be\
    \ noted if the masking is different."
  type: boolean
  inputBinding:
    prefix: -softMask
- id: in_sort_name
  doc: '- sort input files by name before comparing'
  type: boolean
  inputBinding:
    prefix: -sortName
- id: in_peptide
  doc: '- read as peptide sequences'
  type: boolean
  inputBinding:
    prefix: -peptide
- id: in_a_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- faCmp
