class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/realignPolishes.cwl
inputs:
- id: actually_work_just
  doc: ": Don't actually do the work, just count the statistics"
  type: boolean
  inputBinding:
    prefix: -q
- id: merge
  doc: ''
  type: string
  inputBinding:
    prefix: -merge
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -M
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: polishes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: somewhere
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- realignPolishes
