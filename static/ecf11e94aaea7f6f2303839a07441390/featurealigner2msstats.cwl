class: CommandLineTool
id: ../../../featurealigner2msstats.py.cwl
inputs:
- id: align_two_ms_stats_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_feature_alignment_dot_tsv
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- featurealigner2msstats.py
