class: CommandLineTool
id: phylorank_scale_tree_output_tree.cwl
inputs:
- id: in_phylo_rank
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_scale_tree
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_tree
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_tree
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylorank:0.1.9--py_0
cwlVersion: v1.1
baseCommand:
- phylorank
- scale_tree
- output_tree
