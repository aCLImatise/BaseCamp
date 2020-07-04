class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/omero_sessions_timeout.cwl
inputs:
- id: session
  doc: Session other than the current to update
  type: string
  inputBinding:
    prefix: --session
- id: seconds
  doc: Number of seconds to set the timeToIdle value to
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- sessions
- timeout
