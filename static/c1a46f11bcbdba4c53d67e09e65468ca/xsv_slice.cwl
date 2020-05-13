class: CommandLineTool
id: xsv_slice.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: start
  doc: The index of the record to slice from.
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: The index of the record to slice to.
  type: string
  inputBinding:
    prefix: --end
- id: len
  doc: The length of the slice (can be used instead of --end).
  type: string
  inputBinding:
    prefix: --len
- id: index
  doc: Slice a single record (shortcut for -s N -l 1).
  type: string
  inputBinding:
    prefix: --index
- id: output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: no_headers
  doc: When set, the first row will not be interpreted as headers. Otherwise, the
    first row will always appear in the output as the header row.
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
- slice
