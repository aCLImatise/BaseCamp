class: CommandLineTool
id: aria2c.cwl
inputs:
- id: max_connection_per_server
  doc: =4 --min-split-size=1M.
  type: boolean
  inputBinding:
    prefix: --max-connection-per-server
outputs: []
cwlVersion: v1.1
baseCommand:
- aria2c
