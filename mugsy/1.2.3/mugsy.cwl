class: CommandLineTool
id: mugsy.cwl
inputs:
- id: duplications
  doc: 1 - Detect and report duplications. 0 - Skip. Default is 0.
  type: boolean
  inputBinding:
    prefix: -duplications
- id: debug
  doc: debug level. > 2 verbose
  type: boolean
  inputBinding:
    prefix: -debug
outputs: []
cwlVersion: v1.1
baseCommand:
- mugsy
