class: CommandLineTool
id: ../../../calculate_distances.py.cwl
inputs:
- id: in_out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: in_log
  doc: ''
  type: string
  inputBinding:
    prefix: --log
- id: in_log_level
  doc: ''
  type: string
  inputBinding:
    prefix: --log-level
- id: in_procs
  doc: ''
  type: string
  inputBinding:
    prefix: --procs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- calculate_distances.py
