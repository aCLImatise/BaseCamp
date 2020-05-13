class: CommandLineTool
id: mfa2xmfa_FastA.cwl
inputs:
- id: mfa_alignment_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: x_mfa_alignment_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: unaligned
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- mfa2xmfa
- FastA
