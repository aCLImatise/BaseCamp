class: CommandLineTool
id: ../../../omero_config_load.cwl
inputs:
- id: no_error_conflict
  doc: No error on conflict
  type: boolean
  inputBinding:
    prefix: -q
- id: file
  doc: Files to read from. Default to standard input if not specified
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- config
- load
