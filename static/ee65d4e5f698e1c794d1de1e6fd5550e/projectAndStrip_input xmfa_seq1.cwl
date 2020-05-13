class: CommandLineTool
id: projectAndStrip_input xmfa_seq1.cwl
inputs:
- id: output_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_n
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- projectAndStrip
- input xmfa
- seq1
