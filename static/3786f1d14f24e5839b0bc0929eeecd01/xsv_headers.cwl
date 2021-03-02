class: CommandLineTool
id: xsv_headers.cwl
inputs:
- id: in_just_names
  doc: "Only show the header names (hide column index).\nThis is automatically enabled\
    \ if more than one\ninput is given."
  type: boolean?
  inputBinding:
    prefix: --just-names
- id: in_intersect
  doc: "Shows the intersection of all headers in all of\nthe inputs given."
  type: boolean?
  inputBinding:
    prefix: --intersect
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
- headers
