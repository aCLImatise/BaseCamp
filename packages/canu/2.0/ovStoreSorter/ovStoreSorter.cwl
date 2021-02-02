class: CommandLineTool
id: ovStoreSorter.cwl
inputs:
- id: in_path_overlap_store
  doc: path to overlap store to create
  type: File
  inputBinding:
    prefix: -O
- id: in_path_sequence_store
  doc: path to sequence store
  type: File
  inputBinding:
    prefix: -S
- id: in_path_ovstoreconfig_file
  doc: path to ovStoreConfig configuration file
  type: File
  inputBinding:
    prefix: -C
- id: in_slice_process_n
  doc: slice to process (1 ... N)
  type: long
  inputBinding:
    prefix: -s
- id: in_maximum_memory_use
  doc: maximum memory to use, in gigabytes
  type: string
  inputBinding:
    prefix: -M
- id: in_delete_early
  doc: remove intermediates as soon as possible (unsafe)
  type: boolean
  inputBinding:
    prefix: -deleteearly
- id: in_delete_late
  doc: remove intermediates when outputs exist (safe)
  type: boolean
  inputBinding:
    prefix: -deletelate
- id: in_force_recompute_exists
  doc: force a recompute, even if the output exists or appears in progress
  type: boolean
  inputBinding:
    prefix: -f
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
- ovStoreSorter
