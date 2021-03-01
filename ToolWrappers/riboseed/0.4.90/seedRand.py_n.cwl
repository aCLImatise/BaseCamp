class: CommandLineTool
id: seedRand.py_n.cwl
inputs:
- id: in_see_dr_and_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seedRand.py
- n
