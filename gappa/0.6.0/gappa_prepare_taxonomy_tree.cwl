class: CommandLineTool
id: gappa_prepare_taxonomy_tree.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tax_on_list_file
  doc: :FILE File that maps taxon names to taxonomic paths.
  type: string
  inputBinding:
    prefix: --taxon-list-file
- id: taxonomy_file
  doc: :FILE   File that lists the taxa of the taxonomy as taxonomic paths.
  type: string
  inputBinding:
    prefix: --taxonomy-file
- id: keep_singleton_inner_nodes
  doc: Taxonomic paths can go down several levels without any furcation. Use this
    option to keep such paths, instead of collapsing them into a single level.
  type: boolean
  inputBinding:
    prefix: --keep-singleton-inner-nodes
- id: keep_inner_node_names
  doc: Taxonomies contain names at every level, while trees usually do not. Use this
    option to also set taxonomic names for the inner nodes of the tree.
  type: boolean
  inputBinding:
    prefix: --keep-inner-node-names
- id: max_level
  doc: =-1          Maximum taxonomic level to process (0-based). Taxa below this
    level are not added to the tree.
  type: long
  inputBinding:
    prefix: --max-level
- id: out_dir
  doc: =.            Directory to write files to
  type: string
  inputBinding:
    prefix: --out-dir
- id: file_prefix
  doc: File prefix for output files
  type: string
  inputBinding:
    prefix: --file-prefix
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
- taxonomy-tree
