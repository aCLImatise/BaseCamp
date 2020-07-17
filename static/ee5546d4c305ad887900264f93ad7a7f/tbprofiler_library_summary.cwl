class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tbprofiler_library_summary.py_compare.cwl
inputs:
- id: drugs
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --drugs
- id: prefix_one
  doc: NGS Platform
  type: string
  inputBinding:
    position: 0
- id: prefix_two
  doc: NGS Platform
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_library_summary.py
- compare
