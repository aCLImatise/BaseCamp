class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/atlas_place.cwl
inputs:
- id: db_name
  doc: ''
  type: string
  inputBinding:
    prefix: --db_name
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: tree
  doc: ''
  type: string
  inputBinding:
    prefix: --tree
- id: sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- atlas
- place
