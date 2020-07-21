class: CommandLineTool
id: ../../../rappas.cwl
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
- id: one_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: building
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: phylo_km_ers
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- rappas
