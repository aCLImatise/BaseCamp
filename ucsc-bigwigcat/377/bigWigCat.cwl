class: CommandLineTool
id: ../../../bigWigCat.cwl
inputs:
- id: items_per_slot
  doc: '- Number of data points bundled at lowest level. Default 1024'
  type: string
  inputBinding:
    prefix: -itemsPerSlot
- id: where
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigCat
