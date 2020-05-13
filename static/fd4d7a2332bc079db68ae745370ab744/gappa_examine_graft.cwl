class: CommandLineTool
id: gappa_examine_graft.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: j_place_path
  doc: :PATH(existing)=[] ... REQUIRED List of jplace files or directories to process.
    For directories, only files with the extension .jplace are processed.
  type: string
  inputBinding:
    prefix: --jplace-path
- id: fully_resolve
  doc: If set, branches that contain multiple pqueries are resolved by creating a
    new branch for each of the pqueries individually, placed according to their distal/proximal
    lengths. If not set (default), all pqueries at one branch are collected in a subtree
    that branches off from the branch.
  type: boolean
  inputBinding:
    prefix: --fully-resolve
- id: name_prefix
  doc: Specify a prefix to be added to all new leaf nodes, i.e., to the query sequence
    names.
  type: string
  inputBinding:
    prefix: --name-prefix
- id: out_dir
  doc: =.            Directory to write files to
  type: string
  inputBinding:
    prefix: --out-dir
- id: allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean
  inputBinding:
    prefix: --allow-file-overwriting
- id: verbose
  doc: Produce more verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: =8            Number of threads to use for calculations.
  type: string
  inputBinding:
    prefix: --threads
- id: log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: string
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- gappa
- examine
- graft
