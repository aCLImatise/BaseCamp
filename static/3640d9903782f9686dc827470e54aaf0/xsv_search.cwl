class: CommandLineTool
id: xsv_search.cwl
inputs:
- id: regex
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ignore_case
  doc: Case insensitive search. This is equivalent to prefixing the regex with '(?i)'.
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: select
  doc: Select the columns to search. See 'xsv select -h' for the full syntax.
  type: string
  inputBinding:
    prefix: --select
- id: invert_match
  doc: Select only rows that did not match
  type: boolean
  inputBinding:
    prefix: --invert-match
- id: output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: no_headers
  doc: When set, the first row will not be interpreted as headers. (i.e., They are
    not searched, analyzed, sliced, etc.)
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
- search
