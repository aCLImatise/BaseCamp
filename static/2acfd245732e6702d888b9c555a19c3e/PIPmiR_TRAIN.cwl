class: CommandLineTool
id: PIPmiR_TRAIN.cwl
inputs:
- id: m
  doc: 'Minimum read count for a mature to be considered expressed (Default: 10)'
  type: string
  inputBinding:
    prefix: -m
- id: x
  doc: 'Maximum amount of memory PIPmiR can use (Default: 4G)'
  type: long
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- PIPmiR
- TRAIN
