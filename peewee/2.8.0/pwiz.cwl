class: CommandLineTool
id: pwiz.py.cwl
inputs:
- id: database_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tables
  doc: Only generate the specified tables. Multiple table names should be separated
    by commas.
  type: string
  inputBinding:
    prefix: --tables
- id: info
  doc: Add database information and other metadata to top of the generated file.
  type: boolean
  inputBinding:
    prefix: --info
- id: preserve_order
  doc: Model definition column ordering matches source table.
  type: boolean
  inputBinding:
    prefix: --preserve-order
outputs: []
cwlVersion: v1.1
baseCommand:
- pwiz.py
