class: CommandLineTool
id: guppy_kr.cwl
inputs:
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
- id: in_specify_filename_write
  doc: Specify the filename to write to.
  type: boolean
  inputBinding:
    prefix: -o
- id: in_out_dir
  doc: Specify the directory to write files to.
  type: boolean
  inputBinding:
    prefix: --out-dir
- id: in_prefix
  doc: Specify a string to be prepended to filenames.
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_exponent_ie_value
  doc: Exponent for KR integration, i.e. value of p in Z_p. Default 1.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_normalize
  doc: Divide KR by a given value. Legal arguments are "tree-length".
  type: boolean
  inputBinding:
    prefix: --normalize
- id: in_seed
  doc: Set the random seed, an integer > 0. Default is 1.
  type: boolean
  inputBinding:
    prefix: --seed
- id: in_list_out
  doc: Output the KR results as a list rather than a matrix.
  type: boolean
  inputBinding:
    prefix: --list-out
- id: in_density
  doc: Make density plots showing the distribution of randomized values with the calculated
    values
  type: boolean
  inputBinding:
    prefix: --density
- id: in_set_samples_use
  doc: Set how many samples to use for significance calculation (0 means calculate
    distance only). Default is 0.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_gaussian
  doc: Use the Gaussian process approximation for p-value estimation
  type: boolean
  inputBinding:
    prefix: --gaussian
- id: in_help
  doc: Display this list of options
  type: boolean
  inputBinding:
    prefix: --help
- id: in_kr
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
- kr
