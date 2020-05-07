class: CommandLineTool
id: xsv_count.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: no_headers
  doc: When set, the first row will not be included in the count.
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
- count
