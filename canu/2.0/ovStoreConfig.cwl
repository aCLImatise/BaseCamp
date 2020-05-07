class: CommandLineTool
id: ovStoreConfig.cwl
inputs:
- id: ov_overlap
  doc: 2 words of 64 bits each.
  type: string
  inputBinding:
    position: 0
- id: ov_overlap_sort_size
  doc: 192 bits
  type: string
  inputBinding:
    position: 1
- id: sc_child_max
  doc: 63942 processes
  type: string
  inputBinding:
    position: 2
- id: sc_open_max
  doc: 1024 files
  type: string
  inputBinding:
    position: 3
- id: s
  doc: path to seqStore for this assembly
  type: string
  inputBinding:
    prefix: -S
- id: l
  doc: a list of ovb files in 'fileList'
  type: File
  inputBinding:
    prefix: -L
- id: m
  doc: use up to 'g' gigabytes memory for sorting overlaps default 4; g-0.25 gb is
    available for sorting overlaps
  type: string
  inputBinding:
    prefix: -M
- id: create
  doc: write overlap store configuration to file 'config'
  type: string
  inputBinding:
    prefix: -create
- id: describe
  doc: write a readable description of the config in 'config' to the screen
  type: string
  inputBinding:
    prefix: -describe
- id: num_buckets
  doc: write the number of buckets to the screen
  type: boolean
  inputBinding:
    prefix: -numbuckets
- id: num_slices
  doc: write the number of slices to the screen
  type: boolean
  inputBinding:
    prefix: -numslices
- id: sort_memory
  doc: write the memory needed (in GB) for a sort job to the screen
  type: boolean
  inputBinding:
    prefix: -sortmemory
- id: list_inputs
  doc: write a list of the input ovb files needed for bucketizer job 'n'  -listslices
    n         write a list of the input slice files needed for sorter job 'n'
  type: string
  inputBinding:
    prefix: -listinputs
outputs: []
cwlVersion: v1.1
baseCommand:
- ovStoreConfig
