class: CommandLineTool
id: omero_admin_diagnostics.cwl
inputs:
- id: no_logs
  doc: Skip log parsing
  type: boolean
  inputBinding:
    prefix: --no-logs
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- admin
- diagnostics
