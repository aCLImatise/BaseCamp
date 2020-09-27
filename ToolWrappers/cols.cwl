class: CommandLineTool
id: cols.cwl
inputs:
- id: in_number_estimate_size
  doc: "The number of lines to read in to estimate the size of a column.\n[default\
    \ 100]"
  type: long
  inputBinding:
    prefix: -l
- id: in_use_opposed_tab
  doc: Use this (opposed to a tab) for the delimiter
  type: string
  inputBinding:
    prefix: -d
- id: in_max
  doc: 'The maximum length of a column (default: unlimited)'
  type: long
  inputBinding:
    prefix: -max
- id: in_min
  doc: 'The minimum length of a column (default: 0)'
  type: long
  inputBinding:
    prefix: -min
- id: in_tab_view_do_tpy
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
- cols
