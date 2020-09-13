class: CommandLineTool
id: ../../../lyner_dist_graph.cwl
inputs:
- id: in_threshold
  doc: ''
  type: double
  inputBinding:
    prefix: --threshold
- id: in_layout
  doc: '[fruchterman_reingold|kamada_kawai]'
  type: boolean
  inputBinding:
    prefix: --layout
- id: in_cliques
  doc: ''
  type: boolean
  inputBinding:
    prefix: --cliques
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- dist-graph
