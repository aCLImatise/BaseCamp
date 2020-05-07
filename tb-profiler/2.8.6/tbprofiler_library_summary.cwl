class: CommandLineTool
id: tbprofiler_library_summary.py_compare.cwl
inputs:
- id: prefix_1
  doc: NGS Platform
  type: string
  inputBinding:
    position: 0
- id: prefix_2
  doc: NGS Platform
  type: string
  inputBinding:
    position: 1
- id: drugs
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --drugs
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_library_summary.py
- compare
