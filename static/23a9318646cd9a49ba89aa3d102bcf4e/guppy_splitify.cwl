class: CommandLineTool
id: guppy_splitify.cwl
inputs:
- id: in_specify_filename_write
  doc: Specify the filename to write to.
  type: boolean?
  inputBinding:
    prefix: -o
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
- id: in_kappa
  doc: 'Specify the exponent for scaling between weighted and unweighted splitification.
    default: 1'
  type: boolean?
  inputBinding:
    prefix: --kappa
- id: in_rep_edges
  doc: Cluster neighboring edges that have splitified euclidean distance less than
    the argument.
  type: boolean?
  inputBinding:
    prefix: --rep-edges
- id: in_epsilon
  doc: "The epsilon to use to determine if a split matrix's column is constant for\
    \ filtering. default: no filtering"
  type: boolean?
  inputBinding:
    prefix: --epsilon
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_split_if_y
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_place_file
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
- splitify
