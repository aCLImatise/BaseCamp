class: CommandLineTool
id: seedRand.py_seed.cwl
inputs:
- id: in_n
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
- seedRand.py
- seed
