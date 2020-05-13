class: CommandLineTool
id: omero_config_append.cwl
inputs:
- id: key
  doc: Name of the key in the current profile
  type: string
  inputBinding:
    position: 0
- id: value
  doc: Value to be appended
  type: string
  inputBinding:
    position: 1
- id: report
  doc: Report if changes are made
  type: boolean
  inputBinding:
    prefix: --report
- id: set
  doc: Append only if not already in the list
  type: boolean
  inputBinding:
    prefix: --set
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- config
- append
