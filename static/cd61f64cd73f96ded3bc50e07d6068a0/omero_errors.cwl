class: CommandLineTool
id: omero_errors.cwl
inputs:
- id: plugins
  doc: Limit to these plugins; otherwise all
  type: string
  inputBinding:
    position: 0
- id: length
  doc: Length of message to print
  type: long
  inputBinding:
    prefix: --length
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- errors
