class: CommandLineTool
id: hivtrace_viz.cwl
inputs:
- id: in_hostname
  doc: 'hostname to bind to (default: 127.0.0.1'
  type: double?
  inputBinding:
    prefix: --hostname
- id: in_port
  doc: "port to bind to; if this port is already in use a free\nport will be selected\
    \ automatically (default: 8080)"
  type: long?
  inputBinding:
    prefix: --port
- id: in_browser
  doc: "name of webbrowser to launch as described in the\ndocumentation of Python's\
    \ webbrowser module:\nhttps://docs.python.org/3/library/webbrowser.html"
  type: File?
  inputBinding:
    prefix: --browser
- id: in_server
  doc: "start hivtrace in server-only mode--no attempt will be\nto open a browser\n"
  type: boolean?
  inputBinding:
    prefix: --server
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hivtrace_viz
