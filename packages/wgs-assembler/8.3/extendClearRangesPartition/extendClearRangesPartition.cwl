class: CommandLineTool
id: extendClearRangesPartition.cwl
inputs:
- id: in_the_gatekeeper_store
  doc: The gatekeeper store
  type: string
  inputBinding:
    prefix: -g
- id: in_the_checkpoint_use
  doc: The checkpoint to use
  type: long
  inputBinding:
    prefix: -n
- id: in_use_ckpname_checkpoint
  doc: Use ckpName as the checkpoint name
  type: string
  inputBinding:
    prefix: -c
- id: in_number_partitions_make
  doc: Number of partitions to make
  type: long
  inputBinding:
    prefix: -N
- id: in_maximum_fragments_partition
  doc: Maximum fragments per partition
  type: long
  inputBinding:
    prefix: -M
- id: in_partition_information_output
  doc: Partition information output file
  type: File
  inputBinding:
    prefix: -p
- id: in_opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_partition_information_output
  doc: Partition information output file
  type: File
  outputBinding:
    glob: $(inputs.in_partition_information_output)
cwlVersion: v1.1
baseCommand:
- extendClearRangesPartition
