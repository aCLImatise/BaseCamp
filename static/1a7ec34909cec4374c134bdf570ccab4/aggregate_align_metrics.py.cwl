class: CommandLineTool
id: aggregate_align_metrics.py.cwl
inputs:
- id: in_exclude_spurious_structs
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --exclude-spurious-structs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- aggregate_align_metrics.py
