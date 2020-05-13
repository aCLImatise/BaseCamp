class: CommandLineTool
id: omero_sessions_who.cwl
inputs:
- id: show_uuid
  doc: Show uuids for sessions
  type: boolean
  inputBinding:
    prefix: --show-uuid
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- sessions
- who
