class: CommandLineTool
id: xsv_flatten.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: condense
  doc: Limits the length of each field to the value specified. If the field is UTF-8
    encoded, then <arg> refers to the number of code points. Otherwise, it refers
    to the number of bytes.
  type: string
  inputBinding:
    prefix: --condense
- id: separator
  doc: 'A string of characters to write after each record. When non-empty, a new line
    is automatically appended to the separator. [default: #]'
  type: string
  inputBinding:
    prefix: --separator
- id: no_headers
  doc: When set, the first row will not be interpreted as headers. When set, the name
    of each field will be its index.
  type: boolean
  inputBinding:
    prefix: --no-headers
- id: delimiter
  doc: 'The field delimiter for reading CSV data. Must be a single character. (default:
    ,)'
  type: string
  inputBinding:
    prefix: --delimiter
outputs: []
cwlVersion: v1.1
baseCommand:
- xsv
- flatten
