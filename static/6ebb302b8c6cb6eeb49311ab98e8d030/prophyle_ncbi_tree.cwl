class: CommandLineTool
id: prophyle_ncbi_tree.py.cwl
inputs:
- id: l
  doc: log file [stderr]
  type: string
  inputBinding:
    prefix: -l
- id: r
  doc: build reduced tree (one sequence every n)
  type: string
  inputBinding:
    prefix: -r
- id: u
  doc: root of the tree (e.g. Bacteria); will exclude sequences which are not its
    descendants
  type: string
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_ncbi_tree.py
