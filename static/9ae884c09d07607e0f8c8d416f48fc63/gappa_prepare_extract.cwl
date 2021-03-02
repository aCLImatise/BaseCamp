class: CommandLineTool
id: gappa_prepare_extract.cwl
inputs:
- id: in_j_place_path
  doc: ":PATH(existing)=[] ... REQUIRED\nList of jplace files or directories to process.\
    \ For directories, only files with the extension `.jplace[.gz]` are processed."
  type: File?
  inputBinding:
    prefix: --jplace-path
- id: in_clade_list_file
  doc: ":FILE REQUIRED\nFile containing a tab-separated list of taxon to clade mapping."
  type: File?
  inputBinding:
    prefix: --clade-list-file
- id: in_fast_a_path
  doc: ":PATH(existing)=[] ...\nList of fasta files or directories to process. For\
    \ directories, only files with the extension `.(fasta|fas|fsa|fna|ffn|faa|frn)[.gz]`\
    \ are processed."
  type: File?
  inputBinding:
    prefix: --fasta-path
- id: in_threshold
  doc: ":FLOAT in [0.5 - 1]=0.95\nThreshold of how much placement mass needs to be\
    \ in a clade for extracting a pquery."
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_point_mass
  doc: Treat every pquery as a point mass concentrated on the highest-weight placement.
  type: boolean?
  inputBinding:
    prefix: --point-mass
- id: in_color_tree_file
  doc: ":PATH(non-existing)\nIf a path is provided, an svg file with a tree colored\
    \ by clades is written."
  type: File?
  inputBinding:
    prefix: --color-tree-file
- id: in_samples_out_dir
  doc: "=samples\nDirectory to write samples files to"
  type: Directory?
  inputBinding:
    prefix: --samples-out-dir
- id: in_samples_file_prefix
  doc: File prefix for samples files
  type: File?
  inputBinding:
    prefix: --samples-file-prefix
- id: in_samples_file_suffix
  doc: File suffix for samples files
  type: File?
  inputBinding:
    prefix: --samples-file-suffix
- id: in_sequences_out_dir
  doc: "=sequences\nDirectory to write sequences files to"
  type: Directory?
  inputBinding:
    prefix: --sequences-out-dir
- id: in_sequences_file_prefix
  doc: File prefix for sequences files
  type: File?
  inputBinding:
    prefix: --sequences-file-prefix
- id: in_sequences_file_suffix
  doc: File suffix for sequences files
  type: File?
  inputBinding:
    prefix: --sequences-file-suffix
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
- extract
