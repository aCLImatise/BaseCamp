class: CommandLineTool
id: mauveToXMFA_XMFA output.cwl
inputs:
- id: mauve_alignment_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: x_mfa_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mauveToXMFA
- XMFA output
