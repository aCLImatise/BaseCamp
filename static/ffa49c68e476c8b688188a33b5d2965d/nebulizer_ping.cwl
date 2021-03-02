class: CommandLineTool
id: nebulizer_ping.cwl
inputs:
- id: in_count
  doc: "if set then stop after sending COUNT requests\n(default is to send requests\
    \ forever)."
  type: string?
  inputBinding:
    prefix: --count
- id: in_interval
  doc: "set the interval between sending requests in\nseconds (default is 5 seconds)."
  type: long?
  inputBinding:
    prefix: --interval
- id: in_timeout
  doc: "specify timeout limit in seconds when no connection\ncan be made."
  type: string?
  inputBinding:
    prefix: --timeout
- id: in_galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- ping
