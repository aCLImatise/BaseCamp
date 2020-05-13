class: CommandLineTool
id: phmm_seq 2.cwl
inputs:
- id: seq1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- phmm
- seq 2
