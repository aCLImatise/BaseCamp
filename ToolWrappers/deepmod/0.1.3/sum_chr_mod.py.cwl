class: CommandLineTool
id: sum_chr_mod.py.cwl
inputs:
- id: in_python
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
- sum_chr_mod.py
