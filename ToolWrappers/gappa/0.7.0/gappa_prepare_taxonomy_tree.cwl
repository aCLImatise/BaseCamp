class: CommandLineTool
id: gappa_prepare_taxonomy_tree.cwl
inputs:
- id: in_tax_on_list_file
  doc: :FILE File that maps taxon names to taxonomic paths.
  type: File?
  inputBinding:
    prefix: --taxon-list-file
- id: in_taxonomy_file
  doc: :FILE   File that lists the taxa of the taxonomy as taxonomic paths.
  type: File?
  inputBinding:
    prefix: --taxonomy-file
- id: in_keep_singleton_inner_nodes
  doc: Taxonomic paths can go down several levels without any furcation. Use this
    option to keep such paths, instead of collapsing them into a single level.
  type: boolean?
  inputBinding:
    prefix: --keep-singleton-inner-nodes
- id: in_keep_inner_node_names
  doc: Taxonomies contain names at every level, while trees usually do not. Use this
    option to also set taxonomic names for the inner nodes of the tree.
  type: boolean?
  inputBinding:
    prefix: --keep-inner-node-names
- id: in_max_level
  doc: =-1          Maximum taxonomic level to process (0-based). Taxa below this
    level are not added to the tree.
  type: long?
  inputBinding:
    prefix: --max-level
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
- taxonomy-tree
