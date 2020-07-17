class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/treebest_mfa2aln.cwl
inputs:
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: fast_a_align
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- mfa2aln
