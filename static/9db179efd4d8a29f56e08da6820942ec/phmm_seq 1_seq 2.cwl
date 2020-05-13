class: CommandLineTool
id: phmm_seq 1_seq 2.cwl
inputs:
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- phmm
- seq 1
- seq 2
