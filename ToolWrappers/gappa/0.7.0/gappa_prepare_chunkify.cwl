class: CommandLineTool
id: gappa_prepare_chunkify.cwl
inputs:
- id: in_fast_a_path
  doc: ":PATH(existing)=[] ... REQUIRED\nList of fasta files or directories to process.\
    \ For directories, only files with the extension `.(fasta|fas|fsa|fna|ffn|faa|frn)[.gz]`\
    \ are processed."
  type: File?
  inputBinding:
    prefix: --fasta-path
- id: in_chunk_size
  doc: =50000     Number of sequences per chunk file.
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_min_abundance
  doc: =1      Minimum abundance of a single sequence. Sequences below are filtered
    out.
  type: long?
  inputBinding:
    prefix: --min-abundance
- id: in_hash_function
  doc: ":{SHA1,SHA256,MD5}=SHA1\nHash function for re-naming and identifying sequences."
  type: long?
  inputBinding:
    prefix: --hash-function
- id: in_chunks_out_dir
  doc: =.     Directory to write chunks files to
  type: Directory?
  inputBinding:
    prefix: --chunks-out-dir
- id: in_chunks_file_prefix
  doc: File prefix for chunks files
  type: File?
  inputBinding:
    prefix: --chunks-file-prefix
- id: in_chunks_file_suffix
  doc: File suffix for chunks files
  type: File?
  inputBinding:
    prefix: --chunks-file-suffix
- id: in_abundances_out_dir
  doc: =. Directory to write abundances files to
  type: Directory?
  inputBinding:
    prefix: --abundances-out-dir
- id: in_abundances_file_prefix
  doc: File prefix for abundances files
  type: File?
  inputBinding:
    prefix: --abundances-file-prefix
- id: in_abundances_file_suffix
  doc: File suffix for abundances files
  type: File?
  inputBinding:
    prefix: --abundances-file-suffix
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
  doc: =8            Number of threads to use for calculations.
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
- id: out_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gappa:0.7.0--he513fc3_0
cwlVersion: v1.1
baseCommand:
- gappa
- prepare
- chunkify
