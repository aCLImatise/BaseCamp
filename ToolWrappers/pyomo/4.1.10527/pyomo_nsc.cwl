class: CommandLineTool
id: pyomo_nsc.cwl
inputs:
- id: in_at_call_aside
  doc: File "/usr/local/lib/python3.4/site-packages/pkg_resources/__init__.py", line
    2962, in _call_aside
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
- pyomo_nsc
