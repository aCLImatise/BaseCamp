class: CommandLineTool
id: ../../../make_database.py.cwl
inputs:
- id: tax_file
  doc: Taxonomy file name
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- make_database.py
