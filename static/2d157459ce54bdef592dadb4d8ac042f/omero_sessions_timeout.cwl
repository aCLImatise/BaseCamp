class: CommandLineTool
id: omero_sessions_timeout.cwl
inputs:
- id: seconds
  doc: Number of seconds to set the timeToIdle value to
  type: string
  inputBinding:
    position: 0
- id: session
  doc: Session other than the current to update
  type: string
  inputBinding:
    prefix: --session
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- sessions
- timeout
