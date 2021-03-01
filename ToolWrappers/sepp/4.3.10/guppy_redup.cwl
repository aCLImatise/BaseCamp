class: CommandLineTool
id: guppy_redup.cwl
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
- id: in_dedup_file_use
  doc: The dedup file to use to restore duplicates.
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_specified_redup_list
  doc: If specified, redup with counts instead of a name list.
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_red_up
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
- redup
