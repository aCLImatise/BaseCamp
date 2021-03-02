class: CommandLineTool
id: pizzly_get_fragment_length.py.cwl
inputs:
- id: in_python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get_fragment_length_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_h_five_file
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_cut_off
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pizzly_get_fragment_length.py
