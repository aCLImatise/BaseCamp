class: CommandLineTool
id: xsv_search.cwl
inputs:
- id: in_ignore_case
  doc: "Case insensitive search. This is equivalent to\nprefixing the regex with '(?i)'."
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_select
  doc: "Select the columns to search. See 'xsv select -h'\nfor the full syntax."
  type: string?
  inputBinding:
    prefix: --select
- id: in_invert_match
  doc: Select only rows that did not match
  type: boolean?
  inputBinding:
    prefix: --invert-match
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File?
  inputBinding:
    prefix: --output
- id: in_no_headers
  doc: "When set, the first row will not be interpreted\nas headers. (i.e., They are\
    \ not searched, analyzed,\nsliced, etc.)"
  type: boolean?
  inputBinding:
    prefix: --no-headers
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. (default:\
    \ ,)\n"
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_regex
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
- search
