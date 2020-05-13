class: CommandLineTool
id: scanpy_cli.cwl
inputs:
- id: debug
  doc: Print debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbosity
  doc: Set scanpy verbosity
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
