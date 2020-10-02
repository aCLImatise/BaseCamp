class: CommandLineTool
id: buildMetaphyler.pl.cwl
inputs:
- id: in_norm_vertical_line_un_norm
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_fast_a_two
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_lengths
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_taxonomy
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_blast
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- buildMetaphyler.pl
