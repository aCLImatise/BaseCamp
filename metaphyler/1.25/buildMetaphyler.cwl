class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/buildMetaphyler.pl.cwl
inputs:
- id: norm_vertical_line_un_norm
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a_two
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: lengths
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: taxonomy
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: blast
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- buildMetaphyler.pl
