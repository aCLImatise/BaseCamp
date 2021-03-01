class: CommandLineTool
id: mirmachine_tree_parser.py.cwl
inputs:
- id: in_add_all_nodes
  doc: Move on the tree both ways.
  type: boolean?
  inputBinding:
    prefix: --add-all-nodes
- id: in_print_all_nodes
  doc: Print all available nodes and exit.
  type: boolean?
  inputBinding:
    prefix: --print-all-nodes
- id: in_newick
  doc: A newick tree.
  type: string
  inputBinding:
    position: 0
- id: in_keyword
  doc: A keyword to gather node miRNAs (e.g. Homo).
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirmachine:0.1.2--py_0
cwlVersion: v1.1
baseCommand:
- mirmachine-tree-parser.py
