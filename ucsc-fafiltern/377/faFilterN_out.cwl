class: CommandLineTool
id: faFilterN_out.fa.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: max_percent_n
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- faFilterN
- out.fa
