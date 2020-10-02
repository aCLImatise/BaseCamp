class: CommandLineTool
id: guppy_pca.cwl
inputs:
- id: in_out_dir
  doc: Specify the directory to write files to.
  type: boolean
  inputBinding:
    prefix: --out-dir
- id: in_prefix
  doc: Specify a string to be prepended to filenames. Required.
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_point_mass
  doc: Treat every pquery as a point mass concentrated on the highest-weight placement.
  type: boolean
  inputBinding:
    prefix: --point-mass
- id: in_pp
  doc: Use posterior probability for the weight.
  type: boolean
  inputBinding:
    prefix: --pp
- id: in_reference_package_path
  doc: Reference package path.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_min_fat
  doc: 'The minimum branch length for fattened edges (to increase their visibility).
    To turn off set to 0. Default: 0.01'
  type: boolean
  inputBinding:
    prefix: --min-fat
- id: in_total_width
  doc: 'Set the total pixel width for all of the branches of the tree. Default: 300'
  type: boolean
  inputBinding:
    prefix: --total-width
- id: in_width_factor
  doc: Override total-width by directly setting the number of pixels per unit of thing
    displayed.
  type: boolean
  inputBinding:
    prefix: --width-factor
- id: in_node_numbers
  doc: Put the node numbers in where the bootstraps usually go.
  type: boolean
  inputBinding:
    prefix: --node-numbers
- id: in_gray_black
  doc: Use gray/black in place of red/blue to signify the sign of the coefficient
    for that edge.
  type: boolean
  inputBinding:
    prefix: --gray-black
- id: in_min_width
  doc: Specify the minimum width for a branch to be colored and thickened. Default
    is 1.
  type: boolean
  inputBinding:
    prefix: --min-width
- id: in_write_n
  doc: The number of principal coordinates to write out (default is 5).
  type: boolean
  inputBinding:
    prefix: --write-n
- id: in_scale
  doc: Scale variances to one before performing principal components.
  type: boolean
  inputBinding:
    prefix: --scale
- id: in_s_ymmv
  doc: Use a complete eigendecomposition rather than power iteration.
  type: boolean
  inputBinding:
    prefix: --symmv
- id: in_kappa
  doc: 'Specify the exponent for scaling between weighted and unweighted splitification.
    default: 1'
  type: boolean
  inputBinding:
    prefix: --kappa
- id: in_rep_edges
  doc: Cluster neighboring edges that have splitified euclidean distance less than
    the argument.
  type: boolean
  inputBinding:
    prefix: --rep-edges
- id: in_epsilon
  doc: "The epsilon to use to determine if a split matrix's column is constant for\
    \ filtering. default: 1e-05"
  type: boolean
  inputBinding:
    prefix: --epsilon
- id: in_help
  doc: Display this list of options
  type: boolean
  inputBinding:
    prefix: --help
- id: in_pc_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_place_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- guppy
- pca
