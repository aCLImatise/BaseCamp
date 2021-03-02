class: CommandLineTool
id: xmlToSql.cwl
inputs:
- id: in_prefix
  doc: '- A name to prefix all tables with'
  type: string?
  inputBinding:
    prefix: -prefix
- id: in_text_field
  doc: "- Name to use for text field (default 'text')"
  type: string?
  inputBinding:
    prefix: -textField
- id: in_max_promote_size
  doc: "- Maximum size (default 32) for a element that\njust defines a string to be\
    \ promoted to a field\nin parent table\n"
  type: long?
  inputBinding:
    prefix: -maxPromoteSize
- id: in_in_dot_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_dtd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_stats
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- xmlToSql
