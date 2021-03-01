class: CommandLineTool
id: pyqi_serve_html_interface.cwl
inputs:
- id: in_port
  doc: 'The port to run the server on [default: 8080]'
  type: long?
  inputBinding:
    prefix: --port
- id: in_interface_module
  doc: "The module to serve the interface for [REQUIRED]\n"
  type: string?
  inputBinding:
    prefix: --interface-module
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyqi
- serve-html-interface
