class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PIPmiR_TRAIN.cwl
inputs:
- id: minimum_read_count
  doc: 'Minimum read count for a mature to be considered expressed (Default: 10)'
  type: string
  inputBinding:
    prefix: -m
- id: maximum_amount_pipmir
  doc: 'Maximum amount of memory PIPmiR can use (Default: 4G)'
  type: long
  inputBinding:
    prefix: -X
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -P
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -K
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- PIPmiR
- TRAIN
