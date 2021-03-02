class: CommandLineTool
id: guppy_compress.cwl
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
- id: in_cut_off
  doc: The cutoff parameter for mass compression
  type: boolean?
  inputBinding:
    prefix: --cutoff
- id: in_discard_below
  doc: In island clustering, ignore pquery locations with a mass less than the specified
    value.
  type: boolean?
  inputBinding:
    prefix: --discard-below
- id: in_mcl
  doc: Use MCL clustering instead of island clustering.
  type: boolean?
  inputBinding:
    prefix: --mcl
- id: in_inflation
  doc: If specified, pass this as the inflation value to MCL.
  type: boolean?
  inputBinding:
    prefix: --inflation
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_compress
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
hints: []
cwlVersion: v1.1
baseCommand:
- guppy
- compress
