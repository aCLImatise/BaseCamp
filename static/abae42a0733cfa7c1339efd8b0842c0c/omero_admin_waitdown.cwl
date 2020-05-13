class: CommandLineTool
id: omero_admin_waitdown.cwl
inputs:
- id: wait
  doc: Seconds to wait for operation
  type: string
  inputBinding:
    prefix: --wait
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- admin
- waitdown
