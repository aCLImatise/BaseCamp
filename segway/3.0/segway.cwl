class: CommandLineTool
id: segway.cwl
inputs:
- id: mem_usage
  doc: try each float in PROGRESSION as the number of gibibytes of memory to allocate
    in turn (default 2,3,4,6,8,10,12,14,15)
  type: string
  inputBinding:
    prefix: --mem-usage
- id: split_sequences
  doc: split up sequences that are larger than SIZE bp (default 2000000)
  type: long
  inputBinding:
    prefix: --split-sequences
- id: verbosity
  doc: show messages with verbosity NUM (default 0)
  type: string
  inputBinding:
    prefix: --verbosity
- id: cluster_opt
  doc: specify an option to be passed to the cluster manager
  type: string
  inputBinding:
    prefix: --cluster-opt
- id: dry_run
  doc: write all files, but do not run any executables
  type: boolean
  inputBinding:
    prefix: --dry-run
outputs: []
cwlVersion: v1.1
baseCommand:
- segway
