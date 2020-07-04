class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/glistcompare.cwl
inputs:
- id: union
  doc: '- union of input lists'
  type: boolean
  inputBinding:
    prefix: --union
- id: intersection
  doc: '- intersection of input lists'
  type: boolean
  inputBinding:
    prefix: --intersection
- id: difference
  doc: '- difference of input lists'
  type: boolean
  inputBinding:
    prefix: --difference
- id: double_difference
  doc: '- double difference of input lists'
  type: boolean
  inputBinding:
    prefix: --double_difference
- id: diff_union
  doc: '- subtract first list from the second and finds difference'
  type: boolean
  inputBinding:
    prefix: --diff_union
- id: mismatch
  doc: NUMBER - specify number of mismatches (default 0, can be used with -diff and
    -ddiff)
  type: boolean
  inputBinding:
    prefix: --mismatch
- id: cut_off
  doc: '- specify frequency cut-off (default 1)'
  type: string
  inputBinding:
    prefix: --cutoff
- id: output_name
  doc: '- specify output name (default "out")'
  type: string
  inputBinding:
    prefix: --outputname
- id: rule
  doc: '- specify rule how final frequencies are calculated (default, add, subtract,
    min, max, first, second, 1, 2) NOTE: rules min, subtract, first and second can
    only be used with finding the intersection.'
  type: string
  inputBinding:
    prefix: --rule
- id: subset
  doc: SIZE - make subset with given method (rand, rand_unique)
  type: string
  inputBinding:
    prefix: --subset
- id: count_only
  doc: '- output count of k-mers instead of k-mers themself'
  type: boolean
  inputBinding:
    prefix: --count_only
- id: disable_scouts
  doc: '- disable list read-ahead in background thread'
  type: boolean
  inputBinding:
    prefix: --disable_scouts
- id: increase_debug_level
  doc: '- increase debug level'
  type: boolean
  inputBinding:
    prefix: -D
- id: input_list_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_list_two_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: method
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- glistcompare
