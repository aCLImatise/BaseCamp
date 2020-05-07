class: CommandLineTool
id: omero_admin_stopasync.cwl
inputs:
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
- stopasync
