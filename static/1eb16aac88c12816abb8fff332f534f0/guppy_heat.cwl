class: CommandLineTool
id: guppy_heat.cwl
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
- id: in_reference_package_path
  doc: Reference package path. Required.
  type: boolean?
  inputBinding:
    prefix: -c
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
- id: in_gray_black
  doc: Use gray/black in place of red/blue to signify the sign of the coefficient
    for that edge.
  type: boolean?
  inputBinding:
    prefix: --gray-black
- id: in_min_width
  doc: Specify the minimum width for a branch to be colored and thickened. Default
    is 1.
  type: boolean?
  inputBinding:
    prefix: --min-width
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_heat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_matrix_dot_csv
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
  dockerPull: quay.io/biocontainers/sepp:v4.5.0--py37_0
cwlVersion: v1.1
baseCommand:
- guppy
- heat
