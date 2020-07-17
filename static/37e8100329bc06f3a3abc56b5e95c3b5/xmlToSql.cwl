class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/xmlToSql.cwl
inputs:
- id: prefix
  doc: '- A name to prefix all tables with'
  type: string
  inputBinding:
    prefix: -prefix
- id: text_field
  doc: "- Name to use for text field (default 'text')"
  type: string
  inputBinding:
    prefix: -textField
- id: max_promote_size
  doc: '- Maximum size (default 32) for a element that just defines a string to be
    promoted to a field in parent table'
  type: string
  inputBinding:
    prefix: -maxPromoteSize
- id: in_dot_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_dtd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_stats
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- xmlToSql
