class: CommandLineTool
id: ../../../prophyle_ncbi_tree.py.cwl
inputs:
- id: log_file
  doc: log file [stderr]
  type: string
  inputBinding:
    prefix: -l
- id: build_reduced_tree
  doc: build reduced tree (one sequence every n)
  type: string
  inputBinding:
    prefix: -r
- id: root_tree_bacteria
  doc: root of the tree (e.g. Bacteria); will exclude sequences which are not its
    descendants
  type: string
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_ncbi_tree.py
