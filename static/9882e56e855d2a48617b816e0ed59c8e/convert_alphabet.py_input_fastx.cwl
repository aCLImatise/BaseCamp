class: CommandLineTool
id: ../../../convert_alphabet.py_input_fastx.cwl
inputs:
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -R
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_convert_alphabet_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert_alphabet.py
- input_fastx
