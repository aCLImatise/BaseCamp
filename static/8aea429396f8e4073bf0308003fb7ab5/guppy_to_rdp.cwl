class: CommandLineTool
id: guppy_to_rdp.cwl
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
  doc: Specify a string to be prepended to filenames. Required.
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_reference_package_path
  doc: Reference package path. Required.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_ranks_include_annotated
  doc: Ranks to include in the annotated fasta file. Can be comma-separated.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_to_rdp
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- guppy
- to_rdp
