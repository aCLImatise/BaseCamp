class: CommandLineTool
id: PhiSpy.py_infile.cwl
inputs:
- id: in_m
  doc: ''
  type: string?
  inputBinding:
    prefix: -m
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_phi_spy_do_tpy
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
- PhiSpy.py
- infile
