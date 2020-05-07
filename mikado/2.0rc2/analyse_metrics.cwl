class: CommandLineTool
id: analyse_metrics.py_refmap.cwl
inputs:
- id: metrics
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_map
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- analyse_metrics.py
- refmap
