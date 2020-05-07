class: CommandLineTool
id: make_database.py.cwl
inputs:
- id: tax_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- make_database.py
