class: CommandLineTool
id: ../../../staramr.cwl
inputs:
- id: in_verbose
  doc: Turn on verbose logging [False].
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- staramr
