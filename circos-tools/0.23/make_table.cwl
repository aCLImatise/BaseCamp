class: CommandLineTool
id: ../../../make_table.cwl
inputs:
- id: rows
  doc: ''
  type: long
  inputBinding:
    prefix: -rows
- id: cols
  doc: ''
  type: long
  inputBinding:
    prefix: -cols
outputs: []
cwlVersion: v1.1
baseCommand:
- make-table
