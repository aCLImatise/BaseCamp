class: CommandLineTool
id: grf_filter.cwl
inputs:
- id: min_tr_len
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: max_tr_len
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: min_spacer_len
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: max_spacer_len
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: input_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- grf-filter
