class: CommandLineTool
id: prophyle_ncbi_tree.py.cwl
inputs:
- id: in_log_file
  doc: log file [stderr]
  type: File?
  inputBinding:
    prefix: -l
- id: in_build_reduced_tree
  doc: build reduced tree (one sequence every n)
  type: string?
  inputBinding:
    prefix: -r
- id: in_root_tree_eg
  doc: "root of the tree (e.g. Bacteria); will exclude sequences\nwhich are not its\
    \ descendants\n"
  type: string?
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prophyle_ncbi_tree.py
