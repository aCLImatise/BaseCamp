class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ovStoreSorter.cwl
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
- id: slice_process_n
  doc: slice to process (1 ... N)
  type: string
  inputBinding:
    prefix: -s
- id: maximum_memory_use
  doc: maximum memory to use, in gigabytes
  type: string
  inputBinding:
    prefix: -M
- id: delete_early
  doc: remove intermediates as soon as possible (unsafe)
  type: boolean
  inputBinding:
    prefix: -deleteearly
- id: delete_late
  doc: remove intermediates when outputs exist (safe)
  type: boolean
  inputBinding:
    prefix: -deletelate
- id: force_recompute_exists
  doc: force a recompute, even if the output exists or appears in progress
  type: boolean
  inputBinding:
    prefix: -f
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ovStoreSorter
