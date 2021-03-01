class: CommandLineTool
id: xsv_count.cwl
inputs:
- id: in_no_headers
  doc: "When set, the first row will not be included in\nthe count."
  type: boolean?
  inputBinding:
    prefix: --no-headers
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. (default:\
    \ ,)\n"
  type: string?
  inputBinding:
    prefix: --delimiter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- xsv
- count
