class: CommandLineTool
id: xsv_table.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: width
  doc: 'The minimum width of each column. [default: 2]'
  type: string
  inputBinding:
    prefix: --width
- id: pad
  doc: 'The minimum number of spaces between each column. [default: 2]'
  type: string
  inputBinding:
    prefix: --pad
- id: condense
  doc: Limits the length of each field to the value specified. If the field is UTF-8
    encoded, then <arg> refers to the number of code points. Otherwise, it refers
    to the number of bytes.
  type: string
  inputBinding:
    prefix: --condense
- id: output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
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
- table
