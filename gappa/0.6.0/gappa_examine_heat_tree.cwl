class: CommandLineTool
id: gappa_examine_heat_tree.cwl
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
  doc: :{absolute,relative}=absolute Set the per-sample normalization method. 'absolute'
    does not change the masses, while 'relative' normalizes them to a total mass of
    1 per input jplace sample.
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
- id: max_value
  doc: =1         Maximum value that is represented by the color scale. If not set,
    the maximum value in the data is used.
  type: double
  inputBinding:
    prefix: --max-value
- id: clip_over
  doc: Clip (clamp) values greater than max to be inside [ min, max ]. If set, --over-color
    is not used to indicate values out of range.
  type: boolean
  inputBinding:
    prefix: --clip-over
- id: over_color
  doc: =#00ffff   Color used to indicate values above max.
  type: string
  inputBinding:
    prefix: --over-color
- id: min_value
  doc: =0         Minimum value that is represented by the color scale. If not set,
    the minimum value in the data is used.
  type: double
  inputBinding:
    prefix: --min-value
- id: clip_under
  doc: Clip (clamp) values less than min to be inside [ min, max ]. If set, --under-color
    is not used to indicate values out of range.
  type: boolean
  inputBinding:
    prefix: --clip-under
- id: under_color
  doc: =#ff00ff  Color used to indicate values below min.
  type: string
  inputBinding:
    prefix: --under-color
- id: clip
  doc: Clip (clamp) values to be inside [ min, max ]. This option is a shortcut to
    set --clip-under and --clip-over at once.
  type: boolean
  inputBinding:
    prefix: --clip
- id: mask_value
  doc: =nan      Mask value that identifies invalid values. Value in the data that
    compare equal to the mask value are colored using --mask-color. This is meant
    as a simple means of filtering and visualizing invalid values. If not set, no
    masking value is applied.
  type: double
  inputBinding:
    prefix: --mask-value
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
  doc: =tree File prefix for tree files
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
- examine
- heat-tree
