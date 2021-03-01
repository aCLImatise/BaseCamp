class: CommandLineTool
id: cnvkit.py_breaks_segment.cwl
inputs:
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
- id: in_m
  doc: ''
  type: long?
  inputBinding:
    prefix: -m
- id: in_cnv_kit_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_breaks
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_segment
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- breaks
- segment
