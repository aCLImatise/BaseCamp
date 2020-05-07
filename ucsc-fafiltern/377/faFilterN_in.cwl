class: CommandLineTool
id: faFilterN_in.fa_maxPercentN.cwl
inputs:
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: max_percent_n
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- faFilterN
- in.fa
- maxPercentN
