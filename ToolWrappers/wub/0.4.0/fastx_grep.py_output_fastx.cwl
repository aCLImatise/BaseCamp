class: CommandLineTool
id: fastx_grep.py_output_fastx.cwl
inputs:
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -n
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_fast_x_grep_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastx_grep.py
- output_fastx
