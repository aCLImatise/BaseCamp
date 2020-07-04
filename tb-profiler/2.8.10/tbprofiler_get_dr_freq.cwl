class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tbprofiler_get_dr_freq.py.cwl
inputs:
- id: meta
  doc: ''
  type: string
  inputBinding:
    prefix: --meta
- id: json
  doc: NGS Platform
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_get_dr_freq.py
