class: CommandLineTool
id: kid.cwl
inputs:
- id: in_encoding
  doc: "Specify the output character encoding.\nDefault: utf-8"
  type: long
  inputBinding:
    prefix: --encoding
- id: in_output
  doc: "Specify the output file.\nDefault: standard output"
  type: File
  inputBinding:
    prefix: --output
- id: in_port__serverhostportspecify
  doc: ":port, --server=host:port\nSpecify the server address if\nyou want to start\
    \ the HTTP server.\nInstead of the Kid template,\nyou can specify a base directory."
  type: Directory
  inputBinding:
    prefix: -s
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify the output file.\nDefault: standard output"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- kid
