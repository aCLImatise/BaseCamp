class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/para.cwl
inputs:
- id: verbose
  doc: '- set verbosity level.'
  type: string
  inputBinding:
    prefix: -verbose
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
outputs: []
cwlVersion: v1.1
baseCommand:
- para
