class: CommandLineTool
id: omero_config_set.cwl
inputs:
- id: key
  doc: Name of the key in the current profile
  type: string
  inputBinding:
    position: 0
- id: value
  doc: Value to be set. If it is missing, the key will be removed
  type: string
  inputBinding:
    position: 1
- id: report
  doc: Report if changes are made
  type: boolean
  inputBinding:
    prefix: --report
- id: file
  doc: Load value from file
  type: File
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- config
- set
