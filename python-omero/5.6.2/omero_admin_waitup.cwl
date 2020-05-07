class: CommandLineTool
id: omero_admin_waitup.cwl
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
- waitup
