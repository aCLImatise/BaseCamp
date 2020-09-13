class: CommandLineTool
id: ../../../scanpy_cli.cwl
inputs:
- id: in_debug
  doc: Print debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_verbosity
  doc: Set scanpy verbosity
  type: long
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scanpy-cli
