class: CommandLineTool
id: projectAndStrip_input xmfa_output xmfa_seqN.cwl
inputs:
- id: seq1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_n
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- projectAndStrip
- input xmfa
- output xmfa
- seqN
