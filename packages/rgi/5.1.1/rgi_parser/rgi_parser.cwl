class: CommandLineTool
id: ../../../rgi_parser.cwl
inputs:
- id: in_input
  doc: RGI results in a .json file
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: Name/identifier for the output categorical .json files
  type: string
  inputBinding:
    prefix: --output
- id: in_include_loose
  doc: Include loose hits in addition to strict and perfect
  type: boolean
  inputBinding:
    prefix: --include_loose
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgi
- parser
