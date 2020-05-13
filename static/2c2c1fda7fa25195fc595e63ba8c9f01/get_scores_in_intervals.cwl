class: CommandLineTool
id: get_scores_in_intervals.py_out_file.cwl
inputs:
- id: score_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: interval_file
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- get_scores_in_intervals.py
- out_file
