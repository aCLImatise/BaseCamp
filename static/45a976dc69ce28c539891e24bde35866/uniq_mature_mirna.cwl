class: CommandLineTool
id: uniq_mature_mirna.pl_xls.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: raw
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: expression
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: xls
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: xls
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- uniq_mature_mirna.pl
- xls
