class: CommandLineTool
id: phmm_seq 1_out file.cwl
inputs:
- id: seq2
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- phmm
- seq 1
- out file
