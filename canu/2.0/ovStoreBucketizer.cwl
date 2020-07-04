class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ovStoreBucketizer.cwl
inputs:
- id: path_overlap_store
  doc: path to overlap store to create
  type: string
  inputBinding:
    prefix: -O
- id: path_sequence_store
  doc: path to a sequence store
  type: string
  inputBinding:
    prefix: -S
- id: path_ovstoreconfig_file
  doc: path to ovStoreConfig configuration file
  type: string
  inputBinding:
    prefix: -C
- id: bucket_create_n
  doc: bucket to create (1 ... N)
  type: string
  inputBinding:
    prefix: -b
- id: filter_overlaps_e
  doc: filter overlaps above e fraction error
  type: string
  inputBinding:
    prefix: -e
- id: force_overwriting_data
  doc: force overwriting existing data
  type: boolean
  inputBinding:
    prefix: -f
- id: be_overly_verbose
  doc: be overly verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ovStoreBucketizer
