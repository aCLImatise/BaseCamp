class: CommandLineTool
id: xsv_input.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: quote
  doc: 'The quote character to use. [default: "]'
  type: string
  inputBinding:
    prefix: --quote
- id: escape
  doc: The escape character to use. When not specified, quotes are escaped by doubling
    them.
  type: string
  inputBinding:
    prefix: --escape
- id: output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: delimiter
  doc: 'The field delimiter for reading CSV data. Must be a single character. [default:
    ,]'
  type: string
  inputBinding:
    prefix: --delimiter
outputs: []
cwlVersion: v1.1
baseCommand:
- xsv
- input
