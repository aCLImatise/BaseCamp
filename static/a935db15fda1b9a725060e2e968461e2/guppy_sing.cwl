class: CommandLineTool
id: guppy_sing.cwl
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
- id: in_xml
  doc: Write phyloXML (with colors) for all visualizations.
  type: boolean?
  inputBinding:
    prefix: --xml
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_sing
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_place_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sepp:v4.5.0--py37_0
cwlVersion: v1.1
baseCommand:
- guppy
- sing
