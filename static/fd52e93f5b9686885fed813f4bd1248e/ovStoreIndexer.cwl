class: CommandLineTool
id: ovStoreIndexer.cwl
inputs:
- id: o
  doc: path to overlap store to create
  type: string
  inputBinding:
    prefix: -O
- id: s
  doc: path to sequence store
  type: string
  inputBinding:
    prefix: -S
- id: c
  doc: path to ovStoreConfig configuration file
  type: string
  inputBinding:
    prefix: -C
- id: delete
  doc: remove intermediate files when the index is successfully created
  type: boolean
  inputBinding:
    prefix: -delete
outputs: []
cwlVersion: v1.1
baseCommand:
- ovStoreIndexer
