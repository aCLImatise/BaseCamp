class: CommandLineTool
id: omero_sessions_close.cwl
inputs:
- id: session_id
  doc: The session ID
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- sessions
- close
