class: CommandLineTool
id: filter_gff_values.cwl
inputs:
- id: in_verbose
  doc: "filter by custom key:value, if the argument is 'key:value'\nthe annotation\
    \ is kept if it contains an attribute 'key'\nwhose value is exactly 'value' as\
    \ a string"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_str_in
  doc: Same as '--str-eq' but 'value' is contained in the attribute
  type: string?
  inputBinding:
    prefix: --str-in
- id: in_num_eq
  doc: "Same as '--str-eq' but 'value' is a number which is equal or\ngreater than"
  type: long?
  inputBinding:
    prefix: --num-eq
- id: in_num_ge
  doc: "Same as '--str-eq' but 'value' is a number which is equal or\ngreater than"
  type: long?
  inputBinding:
    prefix: --num-ge
- id: in_num_le
  doc: "Same as '--num-ge' but 'value' is a number which is equal or\nless than"
  type: long?
  inputBinding:
    prefix: --num-le
- id: in_num_gt
  doc: Same as '--str-eq' but 'value' is a number which is greater
  type: long?
  inputBinding:
    prefix: --num-gt
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_than
  doc: --num-lt TEXT  Same as '--num-ge' but 'value' is a number which is less than
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter-gff
- values
