class: CommandLineTool
id: analyse_metrics.py_metrics.cwl
inputs:
- id: in_ref_map
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- analyse_metrics.py
- metrics
