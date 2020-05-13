class: CommandLineTool
id: dbSnoop.cwl
inputs:
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
- id: unsplit
  doc: will merge together tables split by chromosome
  type: string
  inputBinding:
    prefix: -unsplit
- id: no_number_commas
  doc: will leave out commas in big numbers
  type: string
  inputBinding:
    prefix: -noNumberCommas
- id: just_schema
  doc: parts, no contents
  type: string
  inputBinding:
    prefix: -justSchema
- id: skip_table
  doc: skip a given table name
  type: string
  inputBinding:
    prefix: -skipTable
- id: profile
  doc: for connection settings, default = 'db'
  type: string
  inputBinding:
    prefix: -profile
outputs: []
cwlVersion: v1.1
baseCommand:
- dbSnoop
