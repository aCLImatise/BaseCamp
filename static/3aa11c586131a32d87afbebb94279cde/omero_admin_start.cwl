class: CommandLineTool
id: ../../../omero_admin_start.cwl
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
- id: foreground
  doc: Start server in foreground mode (no daemon/service)
  type: boolean
  inputBinding:
    prefix: --foreground
- id: user
  doc: Windows Service Log On As user name.
  type: string
  inputBinding:
    prefix: --user
- id: password
  doc: Windows Service Log On As user password.
  type: string
  inputBinding:
    prefix: --password
- id: file
  doc: Application descriptor. If not provided, a default will be used
  type: File
  inputBinding:
    position: 0
- id: targets
  doc: 'Targets within the application descriptor which  should  be activated. Common
    values are: "debug", "trace" '
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- admin
- start
