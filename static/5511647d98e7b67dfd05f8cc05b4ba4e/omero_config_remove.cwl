class: CommandLineTool
id: omero_config_remove.cwl
inputs:
- id: key
  doc: Name of the key in the current profile
  type: string
  inputBinding:
    position: 0
- id: value
  doc: Value to be removed
  type: string
  inputBinding:
    position: 1
- id: report
  doc: Report if changes are made
  type: boolean
  inputBinding:
    prefix: --report
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- config
- remove
