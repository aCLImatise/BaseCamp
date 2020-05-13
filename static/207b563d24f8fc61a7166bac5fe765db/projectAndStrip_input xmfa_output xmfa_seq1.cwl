class: CommandLineTool
id: projectAndStrip_input xmfa_output xmfa_seq1.cwl
inputs:
- id: seq_n
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- projectAndStrip
- input xmfa
- output xmfa
- seq1
