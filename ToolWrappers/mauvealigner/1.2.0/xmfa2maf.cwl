class: CommandLineTool
id: xmfa2maf.cwl
inputs:
- id: in_x_mfa_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maf_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- xmfa2maf
