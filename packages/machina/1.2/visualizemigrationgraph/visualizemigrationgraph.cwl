class: CommandLineTool
id: visualizemigrationgraph.cwl
inputs:
- id: in_color_map_file
  doc: "Color map file\n"
  type: File?
  inputBinding:
    prefix: -c
- id: in_leaf_labeling
  doc: Leaf labeling
  type: string
  inputBinding:
    position: 0
- id: in_vertex_labeling
  doc: Vertex labeling
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/machina:1.2--h176a8bc_1
cwlVersion: v1.1
baseCommand:
- visualizemigrationgraph
