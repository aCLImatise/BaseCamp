class: CommandLineTool
id: rppr_prepsim.cwl
inputs:
- id: in_reference_package_path
  doc: Reference package path. Required.
  type: boolean?
  inputBinding:
    prefix: -c
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
- id: in_commadelimited_list_prune
  doc: Comma-delimited list of tax_ids to prune.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_prep_sim
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
- rppr
- prepsim
