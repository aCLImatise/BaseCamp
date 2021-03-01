class: CommandLineTool
id: tbprofiler_get_dr_freq.py.cwl
inputs:
- id: in_meta
  doc: ''
  type: string?
  inputBinding:
    prefix: --meta
- id: in_json
  doc: NGS Platform
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
- tbprofiler_get_dr_freq.py
