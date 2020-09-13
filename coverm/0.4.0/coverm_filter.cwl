class: CommandLineTool
id: ../../../coverm_filter.cwl
inputs:
- id: in_min_read_aligned_length
  doc: ''
  type: long
  inputBinding:
    prefix: --min-read-aligned-length
- id: in_min_read_percent_identity
  doc: ''
  type: long
  inputBinding:
    prefix: --min-read-percent-identity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- coverm
- filter
