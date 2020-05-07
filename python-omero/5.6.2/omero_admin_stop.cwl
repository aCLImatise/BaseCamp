class: CommandLineTool
id: omero_admin_stop.cwl
inputs:
- id: wait
  doc: Seconds to wait for operation
  type: string
  inputBinding:
    prefix: --wait
- id: force_rewrite
  doc: Force the configuration to be rewritten before checking the server status
  type: boolean
  inputBinding:
    prefix: --force-rewrite
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- admin
- stop
