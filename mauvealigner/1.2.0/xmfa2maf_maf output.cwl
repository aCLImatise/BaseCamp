class: CommandLineTool
id: xmfa2maf_maf output.cwl
inputs:
- id: x_mfa_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: maf_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- xmfa2maf
- maf output
