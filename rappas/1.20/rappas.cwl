class: CommandLineTool
id: rappas.cwl
inputs:
- id: xms
  doc: -> memory allocated at startup. (m=MegaByte, g=GigaByte)
  type: boolean
  inputBinding:
    prefix: -Xms
- id: x_mx
  doc: '-> maximum memory allocated to the process.  '
  type: boolean
  inputBinding:
    prefix: -Xmx
outputs: []
cwlVersion: v1.1
baseCommand:
- rappas
