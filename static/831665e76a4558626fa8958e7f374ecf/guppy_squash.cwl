class: CommandLineTool
id: guppy_squash.cwl
inputs:
- id: in_point_mass
  doc: Treat every pquery as a point mass concentrated on the highest-weight placement.
  type: boolean?
  inputBinding:
    prefix: --point-mass
- id: in_pp
  doc: Use posterior probability for the weight.
  type: boolean?
  inputBinding:
    prefix: --pp
- id: in_reference_package_path
  doc: Reference package path.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_seed
  doc: Set the random seed, an integer > 0. Default is 1.
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_min_fat
  doc: 'The minimum branch length for fattened edges (to increase their visibility).
    To turn off set to 0. Default: 0.01'
  type: boolean?
  inputBinding:
    prefix: --min-fat
- id: in_total_width
  doc: 'Set the total pixel width for all of the branches of the tree. Default: 300'
  type: boolean?
  inputBinding:
    prefix: --total-width
- id: in_width_factor
  doc: Override total-width by directly setting the number of pixels per unit of thing
    displayed.
  type: boolean?
  inputBinding:
    prefix: --width-factor
- id: in_node_numbers
  doc: Put the node numbers in where the bootstraps usually go.
  type: boolean?
  inputBinding:
    prefix: --node-numbers
- id: in_out_dir
  doc: Specify the directory to write files to.
  type: boolean?
  inputBinding:
    prefix: --out-dir
- id: in_prefix
  doc: Specify a string to be prepended to filenames.
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_exponent_kr_value
  doc: Exponent for KR integration, i.e. value of p in Z_p. Default 1.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_normalize
  doc: Divide KR by a given value. Legal arguments are "tree-length".
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_bootstrap
  doc: the number of bootstrap replicates to run
  type: boolean?
  inputBinding:
    prefix: --bootstrap
- id: in_tax_cluster
  doc: Perform taxonomic clustering rather than phylogenetic.Specify "unit" or "inv"
    for the two different modes.
  type: boolean?
  inputBinding:
    prefix: --tax-cluster
- id: in_pre_round
  doc: "Apply rounding with 3 sig figs and cutoff 0.01 to each\nplacerun before clustering"
  type: boolean?
  inputBinding:
    prefix: --pre-round
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_squash
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sepp:4.5.1--py37_0
cwlVersion: v1.1
baseCommand:
- guppy
- squash
