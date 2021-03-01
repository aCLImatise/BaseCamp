class: CommandLineTool
id: simulate_errors.py_output_fasta.cwl
inputs:
- id: in_w
  doc: ''
  type: string?
  inputBinding:
    prefix: -w
- id: in_e
  doc: ''
  type: string?
  inputBinding:
    prefix: -e
- id: in_simulate_errors_do_tpy
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
- simulate_errors.py
- output_fasta
