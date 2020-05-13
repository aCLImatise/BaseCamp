class: CommandLineTool
id: omero_config_get.cwl
inputs:
- id: key
  doc: Names of keys in the current profile
  type: string
  inputBinding:
    position: 0
- id: show_password
  doc: Show values of sensitive keys (passwords, tokens, etc.) in the current profile
  type: boolean
  inputBinding:
    prefix: --show-password
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- config
- get
