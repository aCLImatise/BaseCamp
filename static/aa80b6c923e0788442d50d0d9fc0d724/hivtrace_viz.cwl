class: CommandLineTool
id: hivtrace_viz.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: hostname
  doc: 'hostname to bind to (default: 127.0.0.1'
  type: string
  inputBinding:
    prefix: --hostname
- id: port
  doc: 'port to bind to; if this port is already in use a free port will be selected
    automatically (default: 8080)'
  type: string
  inputBinding:
    prefix: --port
- id: browser
  doc: "name of webbrowser to launch as described in the documentation of Python's\
    \ webbrowser module: https://docs.python.org/3/library/webbrowser.html"
  type: File
  inputBinding:
    prefix: --browser
- id: server
  doc: start hivtrace in server-only mode--no attempt will be to open a browser
  type: boolean
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- hivtrace_viz
