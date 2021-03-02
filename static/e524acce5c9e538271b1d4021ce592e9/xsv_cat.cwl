class: CommandLineTool
id: xsv_cat.cwl
inputs:
- id: in_pad
  doc: "When concatenating columns, this flag will cause\nall records to appear. It\
    \ will pad each row if\nother CSV data isn't long enough."
  type: boolean?
  inputBinding:
    prefix: --pad
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File?
  inputBinding:
    prefix: --output
- id: in_no_headers
  doc: "When set, the first row will NOT be interpreted\nas column names. Note that\
    \ this has no effect when\nconcatenating columns."
  type: boolean?
  inputBinding:
    prefix: --no-headers
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. (default:\
    \ ,)\n"
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_columns
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rows
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to <file> instead of stdout.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- xsv
- cat
