class: CommandLineTool
id: ../../../segway.cwl
inputs:
- id: in_mem_usage
  doc: "try each float in PROGRESSION as the number of\ngibibytes of memory to allocate\
    \ in turn (default\n2,3,4,6,8,10,12,14,15)"
  type: double
  inputBinding:
    prefix: --mem-usage
- id: in_split_sequences
  doc: "split up sequences that are larger than SIZE bp\n(default 2000000)"
  type: long
  inputBinding:
    prefix: --split-sequences
- id: in_verbosity
  doc: show messages with verbosity NUM (default 0)
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_cluster_opt
  doc: specify an option to be passed to the cluster manager
  type: string
  inputBinding:
    prefix: --cluster-opt
- id: in_dry_run
  doc: write all files, but do not run any executables
  type: boolean
  inputBinding:
    prefix: --dry-run
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- segway
