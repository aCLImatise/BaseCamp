class: CommandLineTool
id: overlapStoreBucketizer.cwl
inputs:
- id: in_path_store_create
  doc: path to store to create
  type: File?
  inputBinding:
    prefix: -c
- id: in_path_gkpstore_assembly
  doc: path to gkpStore for this assembly
  type: File?
  inputBinding:
    prefix: -g
- id: in_input_overlaps
  doc: input overlaps
  type: File?
  inputBinding:
    prefix: -i
- id: in_job
  doc: index of this overlap input file
  type: File?
  inputBinding:
    prefix: -job
- id: in_use_files_store
  doc: use up to 'f' files for store creation
  type: string?
  inputBinding:
    prefix: -F
- id: in_plc
  doc: type of filtering for PLC fragments -- NOT SUPPORTED
  type: string?
  inputBinding:
    prefix: -plc
- id: in_obt
  doc: filter overlaps for OBT
  type: boolean?
  inputBinding:
    prefix: -obt
- id: in_dup
  doc: filter overlaps for OBT/dedupe
  type: boolean?
  inputBinding:
    prefix: -dup
- id: in_filter_overlaps_e
  doc: filter overlaps above e fraction error
  type: string?
  inputBinding:
    prefix: -e
- id: in_raw
  doc: write uncompressed buckets
  type: boolean?
  inputBinding:
    prefix: -raw
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
- overlapStoreBucketizer
