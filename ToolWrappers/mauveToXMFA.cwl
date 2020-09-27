class: CommandLineTool
id: mauveToXMFA.cwl
inputs:
- id: in_mauve_alignment_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_x_mfa_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mauveToXMFA
