class: CommandLineTool
id: gappa_prepare_extract.cwl
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
- id: clade_list_file
  doc: :FILE REQUIRED File containing a tab-separated list of taxon to clade mapping.
  type: string
  inputBinding:
    prefix: --clade-list-file
- id: fast_a_path
  doc: :PATH(existing)=[] ... List of fasta files or directories to process. For directories,
    only files with the extension .(fasta|fas|fsa|fna|ffn|faa|frn) are processed.
  type: string
  inputBinding:
    prefix: --fasta-path
- id: threshold
  doc: :FLOAT in [0.5 - 1]=0.95 Threshold of how much placement mass needs to be in
    a clade for extracting a pquery.
  type: double
  inputBinding:
    prefix: --threshold
- id: point_mass
  doc: Treat every pquery as a point mass concentrated on the highest-weight placement.
  type: boolean
  inputBinding:
    prefix: --point-mass
- id: color_tree_file
  doc: :PATH(non-existing) If a path is provided, an svg file with a tree colored
    by clades is written.
  type: string
  inputBinding:
    prefix: --color-tree-file
- id: samples_out_dir
  doc: =samples Directory to write samples files to
  type: string
  inputBinding:
    prefix: --samples-out-dir
- id: sequences_out_dir
  doc: =sequences Directory to write sequences files to
  type: string
  inputBinding:
    prefix: --sequences-out-dir
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
- extract
