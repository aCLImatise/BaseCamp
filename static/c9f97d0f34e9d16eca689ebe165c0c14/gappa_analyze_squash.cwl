class: CommandLineTool
id: gappa_analyze_squash.cwl
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
- id: exponent
  doc: =1          Exponent for KR integration.
  type: double
  inputBinding:
    prefix: --exponent
- id: point_mass
  doc: Treat every pquery as a point mass concentrated on the highest-weight placement.
  type: boolean
  inputBinding:
    prefix: --point-mass
- id: ignore_multiplicities
  doc: Set the multiplicity of each pquery to 1.
  type: boolean
  inputBinding:
    prefix: --ignore-multiplicities
- id: color_list
  doc: =BuPuBk    List of colors to use for the palette. Can either be the name of
    a color list, a file containing one color per line, or an actual list of colors.
  type: string
  inputBinding:
    prefix: --color-list
- id: reverse_color_list
  doc: If set, the --color-list is reversed.
  type: boolean
  inputBinding:
    prefix: --reverse-color-list
- id: log_scaling
  doc: If set, the sequential color list is logarithmically scaled instead of linearily.
  type: boolean
  inputBinding:
    prefix: --log-scaling
- id: out_dir
  doc: =.            Directory to write files to
  type: string
  inputBinding:
    prefix: --out-dir
- id: tree_file_prefix
  doc: =tree_ File prefix for tree files
  type: string
  inputBinding:
    prefix: --tree-file-prefix
- id: write_newick_tree
  doc: If set, the tree is written to a Newick file.
  type: boolean
  inputBinding:
    prefix: --write-newick-tree
- id: write_nexus_tree
  doc: If set, the tree is written to a Nexus file.
  type: boolean
  inputBinding:
    prefix: --write-nexus-tree
- id: write_phylo_xml_tree
  doc: If set, the tree is written to a Phyloxml file.
  type: boolean
  inputBinding:
    prefix: --write-phyloxml-tree
- id: write_svg_tree
  doc: If set, the tree is written to a Svg file.
  type: boolean
  inputBinding:
    prefix: --write-svg-tree
- id: svg_tree_ladder_ize
  doc: If set, the tree is ladderized.
  type: boolean
  inputBinding:
    prefix: --svg-tree-ladderize
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
- analyze
- squash
