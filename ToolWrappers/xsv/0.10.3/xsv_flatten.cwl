class: CommandLineTool
id: xsv_flatten.cwl
inputs:
- id: in_condense
  doc: "Limits the length of each field to the value\nspecified. If the field is UTF-8\
    \ encoded, then\n<arg> refers to the number of code points.\nOtherwise, it refers\
    \ to the number of bytes."
  type: long?
  inputBinding:
    prefix: --condense
- id: in_separator
  doc: "A string of characters to write after each record.\nWhen non-empty, a new\
    \ line is automatically\nappended to the separator.\n[default: #]"
  type: string?
  inputBinding:
    prefix: --separator
- id: in_no_headers
  doc: "When set, the first row will not be interpreted\nas headers. When set, the\
    \ name of each field\nwill be its index."
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
- flatten
