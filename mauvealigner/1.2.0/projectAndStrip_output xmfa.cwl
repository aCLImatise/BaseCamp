class: CommandLineTool
id: projectAndStrip_output xmfa.cwl
inputs:
- id: input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq1
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: seq_n
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- projectAndStrip
- output xmfa
