class: CommandLineTool
id: uniq.cwl
inputs:
- id: count
  doc: prefix lines by the number of occurrences
  type: boolean
  inputBinding:
    prefix: --count
- id: repeated
  doc: only print duplicate lines, one for each group
  type: boolean
  inputBinding:
    prefix: --repeated
- id: d
  doc: print all duplicate lines
  type: boolean
  inputBinding:
    prefix: -D
- id: all_repeated
  doc: '[=METHOD]  like -D, but allow separating groups with an empty line; METHOD={none(default),prepend,separate}'
  type: boolean
  inputBinding:
    prefix: --all-repeated
- id: skip_fields
  doc: avoid comparing the first N fields
  type: string
  inputBinding:
    prefix: --skip-fields
- id: group
  doc: '[=METHOD]  show all items, separating groups with an empty line; METHOD={separate(default),prepend,append,both}'
  type: boolean
  inputBinding:
    prefix: --group
- id: ignore_case
  doc: ignore differences in case when comparing
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: skip_chars
  doc: avoid comparing the first N characters
  type: string
  inputBinding:
    prefix: --skip-chars
- id: unique
  doc: only print unique lines
  type: boolean
  inputBinding:
    prefix: --unique
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
- id: check_chars
  doc: compare no more than N characters in lines
  type: string
  inputBinding:
    prefix: --check-chars
outputs: []
cwlVersion: v1.1
baseCommand:
- uniq
