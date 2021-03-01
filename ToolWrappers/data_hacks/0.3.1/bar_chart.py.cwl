class: CommandLineTool
id: bar_chart.py.cwl
inputs:
- id: in_agg
  doc: "Two column input format, space seperated with\nvalue<space>key"
  type: boolean?
  inputBinding:
    prefix: --agg
- id: in_agg_key_value
  doc: "Two column input format, space seperated with\nkey<space>value"
  type: boolean?
  inputBinding:
    prefix: --agg-key-value
- id: in_sort_keys
  doc: sort by the key [default]
  type: boolean?
  inputBinding:
    prefix: --sort-keys
- id: in_sort_values
  doc: sort by the frequence
  type: boolean?
  inputBinding:
    prefix: --sort-values
- id: in_reverse_sort
  doc: reverse the sort
  type: boolean?
  inputBinding:
    prefix: --reverse-sort
- id: in_numeric_sort
  doc: sort keys by numeric sequencing
  type: boolean?
  inputBinding:
    prefix: --numeric-sort
- id: in_percentage
  doc: List percentage for each bar
  type: boolean?
  inputBinding:
    prefix: --percentage
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_data
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bar_chart.py
