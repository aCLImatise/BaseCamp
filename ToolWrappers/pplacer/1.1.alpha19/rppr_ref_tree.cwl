class: CommandLineTool
id: rppr_ref_tree.cwl
inputs:
- id: in_reference_package_path
  doc: Reference package path. Required.
  type: boolean?
  inputBinding:
    prefix: -c
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
- id: in_node_numbers
  doc: Put the node numbers in where the bootstraps usually go.
  type: boolean?
  inputBinding:
    prefix: --node-numbers
- id: in_painted
  doc: Use a painted tree in place of the taxonomically annotated tree.
  type: boolean?
  inputBinding:
    prefix: --painted
- id: in_rank_colored
  doc: Include a tree for each rank with taxonomic annotations on every edge.
  type: boolean?
  inputBinding:
    prefix: --rank-colored
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_ref_tree
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
- ref_tree
