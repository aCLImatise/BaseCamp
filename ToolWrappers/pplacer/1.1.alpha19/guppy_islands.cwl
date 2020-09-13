class: CommandLineTool
id: ../../../guppy_islands.cwl
inputs:
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
- id: in_pp
  doc: Use posterior probability for the weight.
  type: boolean
  inputBinding:
    prefix: --pp
- id: in_discard_below
  doc: Ignore pquery locations with a mass less than the specified value.
  type: boolean
  inputBinding:
    prefix: --discard-below
- id: in_help
  doc: Display this list of options
  type: boolean
  inputBinding:
    prefix: --help
- id: in_islands
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
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- guppy
- islands
