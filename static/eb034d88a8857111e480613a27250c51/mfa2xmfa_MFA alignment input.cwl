class: CommandLineTool
id: mfa2xmfa_MFA alignment input.cwl
inputs:
- id: x_mfa_alignment_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: unaligned
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- mfa2xmfa
- MFA alignment input
