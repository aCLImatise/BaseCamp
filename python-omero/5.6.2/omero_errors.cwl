class: CommandLineTool
id: ../../../omero_errors.cwl
inputs:
- id: length
  doc: Length of message to print
  type: long
  inputBinding:
    prefix: --length
- id: plugins
  doc: Limit to these plugins; otherwise all
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- errors
