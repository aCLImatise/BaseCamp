class: CommandLineTool
id: gappa_analyze_dispersion.cwl
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
- id: mass_norm
  doc: :{absolute,relative}=absolute REQUIRED Set the per-sample normalization method.
    'absolute' does not change the masses, while 'relative' normalizes them to a total
    mass of 1 per input jplace sample.
  type: string
  inputBinding:
    prefix: --mass-norm
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
- id: edge_values
  doc: :{both,imbalances,masses}=both Values per edge used to calculate the dispersion.
  type: string
  inputBinding:
    prefix: --edge-values
- id: method
  doc: ':{all,cv,cv-log,sd,sd-log,var,var-log,vmr,vmr-log}=all Method of dispersion.
    Either all (as far as they are applicable), or any of: coefficient of variation
    (cv, standard deviation divided by mean), coefficient of variation log-scaled
    (cv-log), standard deviation (sd), standard deviation log-scaled (sd-log)variance
    (var), variance log-scaled (var-log), variance to mean ratio (vmr, also called
    Index of Dispersion), variance to mean ratio log-scaled (vmr-log).'
  type: string
  inputBinding:
    prefix: --method
- id: color_list
  doc: =viridis   List of colors to use for the palette. Can either be the name of
    a color list, a file containing one color per line, or an actual list of colors.
  type: string
  inputBinding:
    prefix: --color-list
- id: reverse_color_list
  doc: If set, the --color-list is reversed.
  type: boolean
  inputBinding:
    prefix: --reverse-color-list
- id: mask_color
  doc: =#ffff00   Color used to indicate masked values.
  type: string
  inputBinding:
    prefix: --mask-color
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
- id: out_dir
  doc: =.            Directory to write files to
  type: string
  inputBinding:
    prefix: --out-dir
- id: tree_file_prefix
  doc: =dispersion_ File prefix for tree files
  type: string
  inputBinding:
    prefix: --tree-file-prefix
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
- dispersion
