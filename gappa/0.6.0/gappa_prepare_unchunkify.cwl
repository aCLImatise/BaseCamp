class: CommandLineTool
id: gappa_prepare_unchunkify.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: j_place_cache_size
  doc: =0  Cache size to determine how many jplace files are kept in memory. Default
    (0) means all. Use this if the command runs out of memory. It however comes at
    the cost of longer runtime.
  type: string
  inputBinding:
    prefix: --jplace-cache-size
- id: hash_function
  doc: :{SHA1,SHA256,MD5}=SHA1 Hash function that was used for re-naming and identifying
    sequences in the chunkify command.
  type: string
  inputBinding:
    prefix: --hash-function
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
- prepare
- unchunkify
