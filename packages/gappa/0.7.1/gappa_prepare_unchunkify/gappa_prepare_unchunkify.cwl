class: CommandLineTool
id: gappa_prepare_unchunkify.cwl
inputs:
- id: in_abundances_path
  doc: ":PATH(existing)=[] ... REQUIRED\nList of abundances files or directories to\
    \ process. For directories, only files with the extension `.json[.gz]` are processed."
  type: File?
  inputBinding:
    prefix: --abundances-path
- id: in_j_place_path
  doc: ":PATH(existing)=[] ... Excludes: --chunk-list-file --chunk-file-expression\n\
    List of jplace files or directories to process. For directories, only files with\
    \ the extension `.jplace[.gz]` are processed."
  type: File?
  inputBinding:
    prefix: --jplace-path
- id: in_chunk_list_file
  doc: "Excludes: --jplace-path --chunk-file-expression\nIf provided, needs to contain\
    \ a list of chunk file paths in the numerical order that was produced by the chunkify\
    \ command."
  type: File?
  inputBinding:
    prefix: --chunk-list-file
- id: in_chunk_file_expression
  doc: "Excludes: --jplace-path --chunk-list-file\nIf provided, the expression is\
    \ used to load jplace files by replacing any '@' character with the chunk number."
  type: File?
  inputBinding:
    prefix: --chunk-file-expression
- id: in_j_place_cache_size
  doc: =0  Cache size to determine how many jplace files are kept in memory. Default
    (0) means all. Use this if the command runs out of memory. It however comes at
    the cost of longer runtime.
  type: long?
  inputBinding:
    prefix: --jplace-cache-size
- id: in_hash_function
  doc: ":{SHA1,SHA256,MD5}=SHA1\nHash function that was used for re-naming and identifying\
    \ sequences in the chunkify command."
  type: long?
  inputBinding:
    prefix: --hash-function
- id: in_out_dir
  doc: =.            Directory to write files to
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_file_prefix
  doc: File prefix for output files
  type: File?
  inputBinding:
    prefix: --file-prefix
- id: in_file_suffix
  doc: File suffix for output files
  type: File?
  inputBinding:
    prefix: --file-suffix
- id: in_allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean?
  inputBinding:
    prefix: --allow-file-overwriting
- id: in_verbose
  doc: Produce more verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: =1            Number of threads to use for calculations.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_prefix
  doc: File prefix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_prefix)
- id: out_file_suffix
  doc: File suffix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_suffix)
- id: out_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gappa:0.7.1--he513fc3_0
cwlVersion: v1.1
baseCommand:
- gappa
- prepare
- unchunkify
