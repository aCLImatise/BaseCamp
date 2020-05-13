class: CommandLineTool
id: kid.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: encoding
  doc: 'Specify the output character encoding. Default: utf-8'
  type: string
  inputBinding:
    prefix: --encoding
- id: output
  doc: 'Specify the output file. Default: standard output'
  type: string
  inputBinding:
    prefix: --output
- id: s
  doc: :port, --server=host:port Specify the server address if you want to start the
    HTTP server. Instead of the Kid template, you can specify a base directory.
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- kid
