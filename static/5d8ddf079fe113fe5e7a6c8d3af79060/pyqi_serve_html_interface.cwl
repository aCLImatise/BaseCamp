class: CommandLineTool
id: pyqi_serve_html_interface.cwl
inputs:
- id: interface_module
  doc: The module to serve the interface for [REQUIRED]
  type: long
  inputBinding:
    prefix: --interface-module
outputs: []
cwlVersion: v1.1
baseCommand:
- pyqi
- serve-html-interface
