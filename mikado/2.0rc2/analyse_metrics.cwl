class: CommandLineTool
id: ../../../analyse_metrics.py_refmap.cwl
inputs:
- id: analyse_metrics_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: metrics
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ref_map
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- analyse_metrics.py
- refmap
