class: CommandLineTool
id: ../../../clean_false_positive.py.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: in_re_fte
  doc: ''
  type: string
  inputBinding:
    prefix: --refte
- id: in_distance
  doc: ''
  type: string
  inputBinding:
    prefix: --distance
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    prefix: --bedtools
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- clean_false_positive.py
