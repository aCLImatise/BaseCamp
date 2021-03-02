class: CommandLineTool
id: blossom_randGraph.py.cwl
inputs:
- id: in_number_vertices_graphnote
  doc: "is the number of vertices in graph\nNote: N must be even and an integer"
  type: long?
  inputBinding:
    prefix: -N
- id: in_is_probability_edge
  doc: is the probability of an edge
  type: string?
  inputBinding:
    prefix: -p
- id: in_weight_edge_uniformw
  doc: "is the weight of the edge, uniform(-w, w)\nDefault values are: N=1000, p=1.0,\
    \ w=5"
  type: double?
  inputBinding:
    prefix: -w
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- blossom_randGraph.py
