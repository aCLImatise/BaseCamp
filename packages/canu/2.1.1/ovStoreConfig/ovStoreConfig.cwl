class: CommandLineTool
id: ovStoreConfig.cwl
inputs:
- id: in_path_seqstore_assembly
  doc: path to seqStore for this assembly
  type: File?
  inputBinding:
    prefix: -S
- id: in_list_ovb_files
  doc: a list of ovb files in 'fileList'
  type: File?
  inputBinding:
    prefix: -L
- id: in_use_gigabytes_memory
  doc: "use up to 'g' gigabytes memory for sorting overlaps\ndefault 4; g-0.25 gb\
    \ is available for sorting overlaps"
  type: double?
  inputBinding:
    prefix: -M
- id: in_create
  doc: write overlap store configuration to file 'config'
  type: File?
  inputBinding:
    prefix: -create
- id: in_describe
  doc: write a readable description of the config in 'config' to the screen
  type: string?
  inputBinding:
    prefix: -describe
- id: in_num_buckets
  doc: write the number of buckets to the screen
  type: boolean?
  inputBinding:
    prefix: -numbuckets
- id: in_num_slices
  doc: write the number of slices to the screen
  type: boolean?
  inputBinding:
    prefix: -numslices
- id: in_sort_memory
  doc: write the memory needed (in GB) for a sort job to the screen
  type: boolean?
  inputBinding:
    prefix: -sortmemory
- id: in_list_inputs
  doc: write a list of the input ovb files needed for bucketizer job 'n'  -listslices
    n         write a list of the input slice files needed for sorter job 'n'
  type: string?
  inputBinding:
    prefix: -listinputs
- id: in_ov_overlap
  doc: 2 words of 64 bits each.
  type: string
  inputBinding:
    position: 0
- id: in_ov_overlap_sort_size
  doc: 192 bits
  type: string
  inputBinding:
    position: 1
- id: in_sc_child_max
  doc: -1 processes
  type: string
  inputBinding:
    position: 2
- id: in_sc_open_max
  doc: 1048576 files
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- ovStoreConfig
