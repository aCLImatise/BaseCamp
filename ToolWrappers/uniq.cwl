class: CommandLineTool
id: uniq.cwl
inputs:
- id: in_count
  doc: prefix lines by the number of occurrences
  type: boolean
  inputBinding:
    prefix: --count
- id: in_repeated
  doc: only print duplicate lines, one for each group
  type: boolean
  inputBinding:
    prefix: --repeated
- id: in_print_duplicate_lines
  doc: print all duplicate lines
  type: boolean
  inputBinding:
    prefix: -D
- id: in_all_repeated
  doc: "[=METHOD]  like -D, but allow separating groups\nwith an empty line;\nMETHOD={none(default),prepend,separate}"
  type: boolean
  inputBinding:
    prefix: --all-repeated
- id: in_skip_fields
  doc: avoid comparing the first N fields
  type: string
  inputBinding:
    prefix: --skip-fields
- id: in_group
  doc: "[=METHOD]  show all items, separating groups with an empty line;\nMETHOD={separate(default),prepend,append,both}"
  type: boolean
  inputBinding:
    prefix: --group
- id: in_ignore_case
  doc: ignore differences in case when comparing
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: in_skip_chars
  doc: avoid comparing the first N characters
  type: string
  inputBinding:
    prefix: --skip-chars
- id: in_unique
  doc: only print unique lines
  type: boolean
  inputBinding:
    prefix: --unique
- id: in_zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
- id: in_check_chars
  doc: compare no more than N characters in lines
  type: string
  inputBinding:
    prefix: --check-chars
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- uniq
