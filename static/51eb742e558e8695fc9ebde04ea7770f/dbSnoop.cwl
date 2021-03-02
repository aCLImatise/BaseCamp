class: CommandLineTool
id: dbSnoop.cwl
inputs:
- id: in_unsplit
  doc: '- if set will merge together tables split by chromosome'
  type: boolean?
  inputBinding:
    prefix: -unsplit
- id: in_no_number_commas
  doc: '- if set will leave out commas in big numbers'
  type: boolean?
  inputBinding:
    prefix: -noNumberCommas
- id: in_just_schema
  doc: '- only schema parts, no contents'
  type: boolean?
  inputBinding:
    prefix: -justSchema
- id: in_skip_table
  doc: '- if set skip a given table name'
  type: string?
  inputBinding:
    prefix: -skipTable
- id: in_profile
  doc: "- use profile for connection settings, default = 'db'"
  type: string?
  inputBinding:
    prefix: -profile
- id: in_database
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
- dbSnoop
