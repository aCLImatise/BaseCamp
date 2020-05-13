class: CommandLineTool
id: xsv_fmt.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_delimiter
  doc: 'The field delimiter for writing CSV data. [default: ,]'
  type: string
  inputBinding:
    prefix: --out-delimiter
- id: crlf
  doc: Use '\r\n' line endings in the output.
  type: boolean
  inputBinding:
    prefix: --crlf
- id: ascii
  doc: Use ASCII field and record separators.
  type: boolean
  inputBinding:
    prefix: --ascii
- id: quote
  doc: 'The quote character to use. [default: "]'
  type: string
  inputBinding:
    prefix: --quote
- id: quote_always
  doc: Put quotes around every value.
  type: boolean
  inputBinding:
    prefix: --quote-always
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
- fmt
