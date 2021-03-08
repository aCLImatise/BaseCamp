class: CommandLineTool
id: visualizeclonetree.cwl
inputs:
- id: in_color_map_file
  doc: Color map file
  type: File?
  inputBinding:
    prefix: -c
- id: in_vertex_labeling
  doc: "Vertex labeling\n"
  type: string?
  inputBinding:
    prefix: -l
- id: in_leaf_labeling
  doc: Leaf labeling
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/machina:1.2--h176a8bc_1
cwlVersion: v1.1
baseCommand:
- visualizeclonetree
