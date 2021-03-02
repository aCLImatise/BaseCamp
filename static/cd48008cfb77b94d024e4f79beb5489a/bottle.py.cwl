class: CommandLineTool
id: bottle.py.cwl
inputs:
- id: in_bind
  doc: bind socket to ADDRESS.
  type: string?
  inputBinding:
    prefix: --bind
- id: in_server
  doc: use SERVER as backend.
  type: string?
  inputBinding:
    prefix: --server
- id: in_plugin
  doc: install additional plugin/s.
  type: string?
  inputBinding:
    prefix: --plugin
- id: in_debug
  doc: start server in debug mode.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_reload
  doc: auto-reload on file changes.
  type: boolean?
  inputBinding:
    prefix: --reload
- id: in_app
  doc: 'Options:'
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
- bottle.py
