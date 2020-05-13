class: CommandLineTool
id: xsv_cat.cwl
inputs:
- id: pad
  doc: When concatenating columns, this flag will cause all records to appear. It
    will pad each row if other CSV data isn't long enough.
  type: boolean
  inputBinding:
    prefix: --pad
- id: output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: no_headers
  doc: When set, the first row will NOT be interpreted as column names. Note that
    this has no effect when concatenating columns.
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
- cat
