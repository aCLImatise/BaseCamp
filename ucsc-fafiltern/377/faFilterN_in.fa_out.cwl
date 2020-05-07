class: CommandLineTool
id: faFilterN_in.fa_out.fa.cwl
inputs:
- id: max_percent_n
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- faFilterN
- in.fa
- out.fa
