class: CommandLineTool
id: fastg_to_gfa.py.cwl
inputs:
- id: in_fastgtwogfadotpy
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastg_to_gfa.py
