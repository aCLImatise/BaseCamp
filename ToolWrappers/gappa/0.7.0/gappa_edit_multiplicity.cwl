class: CommandLineTool
id: gappa_edit_multiplicity.cwl
inputs:
- id: in_j_place_path
  doc: ":PATH(existing)=[] ... REQUIRED\nList of jplace files or directories to process.\
    \ For directories, only files with the extension `.jplace[.gz]` are processed."
  type: File?
  inputBinding:
    prefix: --jplace-path
- id: in_multiplicity_file
  doc: ":FILE Excludes: --fasta-path --write-multiplicity-file\nFile containing a\
    \ tab-separated list of [sample name,] query name, and multiplicity."
  type: File?
  inputBinding:
    prefix: --multiplicity-file
- id: in_fast_a_path
  doc: ":PATH(existing)=[] ... Excludes: --multiplicity-file --write-multiplicity-file\n\
    List of fasta files or directories to process. For directories, only files with\
    \ the extension `.(fasta|fas|fsa|fna|ffn|faa|frn)[.gz]` are processed."
  type: File?
  inputBinding:
    prefix: --fasta-path
- id: in_keep_full_label
  doc: ": --fasta-path\nIf fasta files are used, keep their whole label as the name\
    \ for jplace pqueries, instead of removing the abundance annotation."
  type: File?
  inputBinding:
    prefix: --keep-full-label
- id: in_write_multiplicity_file
  doc: ": --multiplicity-file --fasta-path\nDo not change the existing multiplicities,\
    \ but instead produce a file that lists them."
  type: File?
  inputBinding:
    prefix: --write-multiplicity-file
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
- id: in_compress
  doc: If set, compress the output files using gzip. Output file extensions are automatically
    extended by `.gz`.
  type: File?
  inputBinding:
    prefix: --compress
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
- id: out_compress
  doc: If set, compress the output files using gzip. Output file extensions are automatically
    extended by `.gz`.
  type: File?
  outputBinding:
    glob: $(inputs.in_compress)
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
- edit
- multiplicity
