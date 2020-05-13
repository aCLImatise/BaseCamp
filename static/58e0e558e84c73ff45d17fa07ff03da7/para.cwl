class: CommandLineTool
id: para.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command_specific
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: verbose
  doc: =1 - set verbosity level.
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- para
