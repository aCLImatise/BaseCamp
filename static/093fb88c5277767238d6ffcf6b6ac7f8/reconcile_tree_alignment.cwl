class: CommandLineTool
id: reconcile_tree_alignment.cwl
inputs:
- id: in_input_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_alignment
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_tree
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_alignment
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
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- reconcile-tree-alignment
