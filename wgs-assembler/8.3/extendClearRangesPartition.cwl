class: CommandLineTool
id: extendClearRangesPartition.cwl
inputs:
- id: g
  doc: The gatekeeper store
  type: string
  inputBinding:
    prefix: -g
- id: n
  doc: The checkpoint to use
  type: string
  inputBinding:
    prefix: -n
- id: c
  doc: Use ckpName as the checkpoint name
  type: string
  inputBinding:
    prefix: -c
- id: n
  doc: Number of partitions to make
  type: string
  inputBinding:
    prefix: -N
- id: m
  doc: Maximum fragments per partition
  type: long
  inputBinding:
    prefix: -M
- id: p
  doc: Partition information output file
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- extendClearRangesPartition
