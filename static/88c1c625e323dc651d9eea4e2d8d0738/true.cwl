class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/true.cwl
inputs:
- id: ignored
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: line
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- 'true'
