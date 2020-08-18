class: CommandLineTool
id: ../../../kclangctest.cwl
inputs:
- id: rnd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rnd
- id: etc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -etc
- id: tran
  doc: ''
  type: boolean
  inputBinding:
    prefix: -tran
- id: order
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kclangctest
