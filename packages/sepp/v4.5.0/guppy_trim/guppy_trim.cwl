class: CommandLineTool
id: guppy_trim.cwl
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
- id: in_min_path_mass
  doc: 'The minimum mass which must be on the path to a leaf to keep it. default:
    0.001'
  type: boolean?
  inputBinding:
    prefix: --min-path-mass
- id: in_discarded
  doc: A file to write discarded pqueries to.
  type: boolean?
  inputBinding:
    prefix: --discarded
- id: in_rewrite_discarded_mass
  doc: Move placements which were on discarded leaves to the nearest non-discarded
    node.
  type: boolean?
  inputBinding:
    prefix: --rewrite-discarded-mass
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_trim
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
- trim
