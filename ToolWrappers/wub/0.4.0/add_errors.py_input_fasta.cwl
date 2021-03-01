class: CommandLineTool
id: add_errors.py_input_fasta.cwl
inputs:
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -n
- id: in_add_errors_do_tpy
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
- add_errors.py
- input_fasta
