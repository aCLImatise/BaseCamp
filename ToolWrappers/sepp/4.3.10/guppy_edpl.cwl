class: CommandLineTool
id: guppy_edpl.cwl
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
- id: in_csv
  doc: Output the results as csv instead of a padded matrix.
  type: boolean?
  inputBinding:
    prefix: --csv
- id: in_pp
  doc: Use posterior probability for the weight.
  type: boolean?
  inputBinding:
    prefix: --pp
- id: in_first_only
  doc: Only print the first name for each pquery.
  type: boolean?
  inputBinding:
    prefix: --first-only
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_ed_pl
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
- edpl
