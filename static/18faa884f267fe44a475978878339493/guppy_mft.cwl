class: CommandLineTool
id: guppy_mft.cwl
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
- id: in_unit_ize
  doc: Make total unit mass per placerun by multiplying with a scalar.
  type: boolean?
  inputBinding:
    prefix: --unitize
- id: in_transform
  doc: A transform to apply to the read multiplicities before calculating. Options
    are 'log', 'unit', 'asinh', and 'no_trans'. Default is no transform.
  type: boolean?
  inputBinding:
    prefix: --transform
- id: in_leaf_values
  doc: Name of CSV file giving values for the leaves of the tree to use in independent
    contrasts.
  type: boolean?
  inputBinding:
    prefix: --leaf-values
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_mft
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
hints: []
cwlVersion: v1.1
baseCommand:
- guppy
- mft
