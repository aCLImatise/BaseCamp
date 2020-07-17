class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/atlas_walk.cwl
inputs:
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: tmp
  doc: ''
  type: string
  inputBinding:
    prefix: --tmp
- id: keep_tmp
  doc: ''
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
- id: probe_set
  doc: probe_set
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- atlas
- walk
