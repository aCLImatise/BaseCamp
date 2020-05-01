#!/usr/bin/env cwl-runner

baseCommand:
- glistcompare
class: CommandLineTool
cwlVersion: v1.0
id: glistcompare
inputs:
- doc: ''
  id: input_list_1
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_list_2
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: method
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 3
  type: string
- doc: '- union of input lists'
  id: union
  inputBinding:
    prefix: --union
  type: boolean
- doc: '- intersection of input lists'
  id: intersection
  inputBinding:
    prefix: --intersection
  type: boolean
- doc: '- difference of input lists'
  id: difference
  inputBinding:
    prefix: --difference
  type: boolean
- doc: of input lists
  id: double_difference
  inputBinding:
    prefix: --double_difference
  type: string
- doc: '- subtract first list from the second and finds difference'
  id: diff_union
  inputBinding:
    prefix: --diff_union
  type: boolean
- doc: NUMBER - specify number of mismatches (default 0, can be used with -diff and
    -ddiff)
  id: mismatch
  inputBinding:
    prefix: --mismatch
  type: boolean
- doc: '- specify frequency cut-off (default 1)'
  id: cut_off
  inputBinding:
    prefix: --cutoff
  type: string
- doc: name (default "out")
  id: output_name
  inputBinding:
    prefix: --outputname
  type: string
- doc: '- specify rule how final frequencies are calculated (default, add, subtract,
    min, max, first, second, 1, 2) NOTE: rules min, subtract, first and second can
    only be used with finding the intersection.'
  id: rule
  inputBinding:
    prefix: --rule
  type: string
- doc: SIZE - make subset with given method (rand, rand_unique)
  id: subset
  inputBinding:
    prefix: --subset
  type: string
- doc: '- output count of k-mers instead of k-mers themself'
  id: count_only
  inputBinding:
    prefix: --count_only
  type: boolean
- doc: '- disable list read-ahead in background thread'
  id: disable_scouts
  inputBinding:
    prefix: --disable_scouts
  type: boolean
- doc: '- increase debug level'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
