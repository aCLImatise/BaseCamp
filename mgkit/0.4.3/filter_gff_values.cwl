class: CommandLineTool
id: filter_gff_values.cwl
inputs:
- id: str_eq
  doc: filter by custom key:value, if the argument is 'key:value' the annotation is
    kept if it contains an attribute 'key' whose value is exactly 'value' as a string
  type: string
  inputBinding:
    prefix: --str-eq
- id: str_in
  doc: Same as '--str-eq' but 'value' is contained in the attribute
  type: string
  inputBinding:
    prefix: --str-in
- id: num_eq
  doc: Same as '--str-eq' but 'value' is a number which is equal or greater than
  type: string
  inputBinding:
    prefix: --num-eq
- id: num_ge
  doc: Same as '--str-eq' but 'value' is a number which is equal or greater than
  type: string
  inputBinding:
    prefix: --num-ge
- id: num_le
  doc: Same as '--num-ge' but 'value' is a number which is equal or less than
  type: string
  inputBinding:
    prefix: --num-le
- id: num_gt
  doc: Same as '--str-eq' but 'value' is a number which is greater than
  type: string
  inputBinding:
    prefix: --num-gt
- id: num_lt
  doc: Same as '--num-ge' but 'value' is a number which is less than
  type: string
  inputBinding:
    prefix: --num-lt
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-gff
- values
