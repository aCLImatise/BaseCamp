class: CommandLineTool
id: treebest_mfa2aln.cwl
inputs:
- id: fast_a_align
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- mfa2aln
