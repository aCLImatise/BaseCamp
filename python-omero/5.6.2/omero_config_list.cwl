class: CommandLineTool
id: omero_config_list.cwl
inputs:
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
- list
