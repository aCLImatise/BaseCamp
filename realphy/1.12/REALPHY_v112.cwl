class: CommandLineTool
id: ../../../REALPHY_v112.cwl
inputs:
- id: x_mx
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Xmx
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: available
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ram
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: mb
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: m
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: sequence
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: var_9
  doc: ''
  type: Directory
  inputBinding:
    position: 7
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: var_11
  doc: ''
  type: Directory
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- REALPHY_v112
