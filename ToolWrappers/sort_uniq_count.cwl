class: CommandLineTool
id: sort_uniq_count.cwl
inputs:
- id: in_prefix_lines_number
  doc: Prefix lines by the number of occurrences
  type: boolean
  inputBinding:
    prefix: -c
- id: in_only_print_duplicate
  doc: Only print duplicate lines
  type: boolean
  inputBinding:
    prefix: -d
- id: in_only_print_lines
  doc: Only print unique lines
  type: boolean
  inputBinding:
    prefix: -u
- id: in_skip_first_n_fields
  doc: Skip first N fields
  type: string
  inputBinding:
    prefix: -f
- id: in_skip_first_n_chars
  doc: Skip first N chars (after any skipped fields)
  type: string
  inputBinding:
    prefix: -s
- id: in_compare_n_characters
  doc: Compare N characters in line
  type: string
  inputBinding:
    prefix: -w
- id: in_cdu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -cdu
- id: in_uniq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sort-uniq-count
