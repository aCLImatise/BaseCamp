class: CommandLineTool
id: ovStoreBucketizer.cwl
inputs:
- id: o
  doc: path to overlap store to create
  type: string
  inputBinding:
    prefix: -O
- id: s
  doc: path to a sequence store
  type: string
  inputBinding:
    prefix: -S
- id: c
  doc: path to ovStoreConfig configuration file
  type: string
  inputBinding:
    prefix: -C
- id: b
  doc: bucket to create (1 ... N)
  type: string
  inputBinding:
    prefix: -b
- id: e
  doc: filter overlaps above e fraction error
  type: string
  inputBinding:
    prefix: -e
- id: f
  doc: force overwriting existing data
  type: boolean
  inputBinding:
    prefix: -f
- id: v
  doc: be overly verbose
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ovStoreBucketizer
