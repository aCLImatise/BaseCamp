class: CommandLineTool
id: nebulizer_ping_OPTIONS.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- ping
- OPTIONS
