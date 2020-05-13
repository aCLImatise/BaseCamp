class: CommandLineTool
id: xsv_sort.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: select
  doc: Select a subset of columns to sort. See 'xsv select --help' for the format
    details.
  type: string
  inputBinding:
    prefix: --select
- id: output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: no_headers
  doc: When set, the first row will not be interpreted as headers. Namely, it will
    be sorted with the rest of the rows. Otherwise, the first row will always appear
    as the header row in the output.
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
- sort
