class: CommandLineTool
id: paragraph2dot.py_output.cwl
inputs:
- id: in_paragraph_two_dot_do_tpy
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- paragraph2dot.py
- output
