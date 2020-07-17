class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ovStoreIndexer.cwl
inputs:
- id: path_overlap_store
  doc: path to overlap store to create
  type: string
  inputBinding:
    prefix: -O
- id: path_sequence_store
  doc: path to sequence store
  type: string
  inputBinding:
    prefix: -S
- id: path_ovstoreconfig_file
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
