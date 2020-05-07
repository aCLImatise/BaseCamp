class: CommandLineTool
id: omero_config_load.cwl
inputs:
- id: file
  doc: Files to read from. Default to standard input if not specified
  type: File
  inputBinding:
    position: 0
- id: q
  doc: No error on conflict
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- config
- load
