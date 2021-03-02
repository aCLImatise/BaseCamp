class: CommandLineTool
id: mfa2xmfa.cwl
inputs:
- id: in_mfa_alignment_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_x_mfa_alignment_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_unaligned
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_fast_a
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_output
  doc: ''
  type: string?
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mfa2xmfa
