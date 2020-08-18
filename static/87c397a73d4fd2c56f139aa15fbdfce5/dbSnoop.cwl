class: CommandLineTool
id: ../../../dbSnoop.cwl
inputs:
- id: unsplit
  doc: '- if set will merge together tables split by chromosome'
  type: boolean
  inputBinding:
    prefix: -unsplit
- id: no_number_commas
  doc: '- if set will leave out commas in big numbers'
  type: boolean
  inputBinding:
    prefix: -noNumberCommas
- id: just_schema
  doc: '- only schema parts, no contents'
  type: boolean
  inputBinding:
    prefix: -justSchema
- id: skip_table
  doc: '- if set skip a given table name'
  type: string
  inputBinding:
    prefix: -skipTable
- id: profile
  doc: "- use profile for connection settings, default = 'db'"
  type: string
  inputBinding:
    prefix: -profile
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dbSnoop
