class: CommandLineTool
id: prophyle_paired_end.py_reads_2.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_prophy_le_paired_enddo_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_reads_two
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prophyle_paired_end.py
- reads_2
