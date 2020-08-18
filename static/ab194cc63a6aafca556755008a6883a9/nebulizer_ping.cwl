class: CommandLineTool
id: ../../../nebulizer_ping.cwl
inputs:
- id: count
  doc: if set then stop after sending COUNT requests (default is to send requests
    forever).
  type: string
  inputBinding:
    prefix: --count
- id: interval
  doc: set the interval between sending requests in seconds (default is 5 seconds).
  type: long
  inputBinding:
    prefix: --interval
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- ping
