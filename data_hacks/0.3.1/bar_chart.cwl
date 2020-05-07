class: CommandLineTool
id: bar_chart.py.cwl
inputs:
- id: agg
  doc: Two column input format, space seperated with value<space>key
  type: boolean
  inputBinding:
    prefix: --agg
- id: agg_key_value
  doc: Two column input format, space seperated with key<space>value
  type: boolean
  inputBinding:
    prefix: --agg-key-value
- id: sort_keys
  doc: sort by the key [default]
  type: boolean
  inputBinding:
    prefix: --sort-keys
- id: sort_values
  doc: sort by the frequence
  type: boolean
  inputBinding:
    prefix: --sort-values
- id: reverse_sort
  doc: reverse the sort
  type: boolean
  inputBinding:
    prefix: --reverse-sort
- id: numeric_sort
  doc: sort keys by numeric sequencing
  type: boolean
  inputBinding:
    prefix: --numeric-sort
- id: percentage
  doc: List percentage for each bar
  type: boolean
  inputBinding:
    prefix: --percentage
outputs: []
cwlVersion: v1.1
baseCommand:
- bar_chart.py
