class: CommandLineTool
id: analyse_metrics.py_refmap.cwl
inputs:
- id: in_analyse_metrics_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_metrics
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ref_map
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- analyse_metrics.py
- refmap
