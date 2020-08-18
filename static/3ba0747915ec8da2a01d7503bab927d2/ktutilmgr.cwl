class: CommandLineTool
id: ../../../ktutilmgr.cwl
inputs:
- id: ds
  doc: ''
  type: string
  inputBinding:
    prefix: -ds
- id: jl
  doc: ''
  type: string
  inputBinding:
    prefix: -jl
- id: wf
  doc: ''
  type: boolean
  inputBinding:
    prefix: -wf
- id: rf
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rf
- id: date
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ktutilmgr
