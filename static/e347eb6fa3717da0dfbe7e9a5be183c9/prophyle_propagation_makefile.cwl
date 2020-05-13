class: CommandLineTool
id: prophyle_propagation_makefile.py.cwl
inputs:
- id: k
  doc: k-mer length
  type: long
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_propagation_makefile.py
