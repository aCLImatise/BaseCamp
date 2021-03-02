class: CommandLineTool
id: ovStoreBuild.cwl
inputs:
- id: in_path_overlap_store
  doc: path to overlap store to create
  type: File?
  inputBinding:
    prefix: -O
- id: in_path_sequence_store
  doc: path to a sequence store
  type: File?
  inputBinding:
    prefix: -S
- id: in_path_ovstoreconfig_configuration
  doc: path to ovStoreConfig configuration file
  type: File?
  inputBinding:
    prefix: -C
- id: in_filter_overlaps_e
  doc: filter overlaps above e fraction error
  type: string?
  inputBinding:
    prefix: -e
- id: in_be_overly_verbose
  doc: be overly verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_opts
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ovStoreBuild
