class: CommandLineTool
id: glistcompare.cwl
inputs:
- id: in_union
  doc: '- union of input lists'
  type: boolean?
  inputBinding:
    prefix: --union
- id: in_intersection
  doc: '- intersection of input lists'
  type: boolean?
  inputBinding:
    prefix: --intersection
- id: in_difference
  doc: '- difference of input lists'
  type: boolean?
  inputBinding:
    prefix: --difference
- id: in_double_difference
  doc: '- double difference of input lists'
  type: boolean?
  inputBinding:
    prefix: --double_difference
- id: in_diff_union
  doc: '- subtract first list from the second and finds difference'
  type: boolean?
  inputBinding:
    prefix: --diff_union
- id: in_mismatch
  doc: NUMBER - specify number of mismatches (default 0, can be used with -diff and
    -ddiff)
  type: boolean?
  inputBinding:
    prefix: --mismatch
- id: in_cut_off
  doc: '- specify frequency cut-off (default 1)'
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_output_name
  doc: '- specify output name (default "out")'
  type: string?
  inputBinding:
    prefix: --outputname
- id: in_rule
  doc: "- specify rule how final frequencies are calculated (default, add, subtract,\
    \ min, max, first, second, 1, 2)\nNOTE: rules min, subtract, first and second\
    \ can only be used with finding the intersection."
  type: long?
  inputBinding:
    prefix: --rule
- id: in_subset
  doc: SIZE - make subset with given method (rand_unique)
  type: long?
  inputBinding:
    prefix: --subset
- id: in_count_only
  doc: '- output count of k-mers instead of k-mers themself'
  type: boolean?
  inputBinding:
    prefix: --count_only
- id: in_disable_scouts
  doc: '- disable list read-ahead in background thread'
  type: boolean?
  inputBinding:
    prefix: --disable_scouts
- id: in_increase_debug_level
  doc: '- increase debug level'
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_input_list_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_input_list_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- glistcompare
