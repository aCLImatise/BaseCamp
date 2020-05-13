class: CommandLineTool
id: omero_sessions_keepalive.cwl
inputs:
- id: frequency
  doc: Time in seconds between keep alive calls
  type: string
  inputBinding:
    prefix: --frequency
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- sessions
- keepalive
