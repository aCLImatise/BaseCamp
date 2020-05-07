class: CommandLineTool
id: tbprofiler_get_dr_freq.py.cwl
inputs:
- id: json
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: meta
  doc: ''
  type: string
  inputBinding:
    prefix: --meta
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_get_dr_freq.py
