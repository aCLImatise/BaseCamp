class: CommandLineTool
id: ovStoreBucketizer.cwl
inputs:
- id: in_path_overlap_store
  doc: path to overlap store to create
  type: File
  inputBinding:
    prefix: -O
- id: in_path_sequence_store
  doc: path to a sequence store
  type: File
  inputBinding:
    prefix: -S
- id: in_path_ovstoreconfig_file
  doc: path to ovStoreConfig configuration file
  type: File
  inputBinding:
    prefix: -C
- id: in_bucket_create_n
  doc: bucket to create (1 ... N)
  type: long
  inputBinding:
    prefix: -b
- id: in_filter_overlaps_e
  doc: filter overlaps above e fraction error
  type: string
  inputBinding:
    prefix: -e
- id: in_force_overwriting_data
  doc: force overwriting existing data
  type: boolean
  inputBinding:
    prefix: -f
- id: in_be_overly_verbose
  doc: be overly verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ovStoreBucketizer
