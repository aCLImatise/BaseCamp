class: CommandLineTool
id: aggregate_scores_in_intervals.py.cwl
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
- id: binned
  doc: "'score_file' is actually a directory of binned array files"
  type: boolean
  inputBinding:
    prefix: --binned
- id: mask
  doc: bed file containing regions not to consider valid
  type: string
  inputBinding:
    prefix: --mask
outputs: []
cwlVersion: v1.1
baseCommand:
- aggregate_scores_in_intervals.py
