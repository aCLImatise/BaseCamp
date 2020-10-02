class: CommandLineTool
id: reago.py.cwl
inputs:
- id: in_o
  doc: ', default 0.8'
  type: double
  inputBinding:
    prefix: -o
- id: in_e
  doc: ', default 0.05'
  type: double
  inputBinding:
    prefix: -e
- id: in_t
  doc: ', default 30'
  type: long
  inputBinding:
    prefix: -t
- id: in_b
  doc: ', default 10'
  type: long
  inputBinding:
    prefix: -b
- id: in_l
  doc: ''
  type: long
  inputBinding:
    prefix: -l
- id: in_filename_dot_fast_a
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reago.py
