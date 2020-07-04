class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kcpolymgr.cwl
inputs:
- id: otr
  doc: ''
  type: boolean
  inputBinding:
    prefix: -otr
- id: create
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kcpolymgr
