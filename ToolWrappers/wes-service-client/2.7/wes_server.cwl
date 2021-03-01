class: CommandLineTool
id: wes_server.cwl
inputs:
- id: in_at_call_aside
  doc: File "/usr/local/lib/python2.7/site-packages/pkg_resources/__init__.py", line
    3082, in _call_aside
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
- wes-server
