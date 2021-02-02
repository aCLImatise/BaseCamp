class: CommandLineTool
id: lyner_dist_graph.cwl
inputs:
- id: in_threshold
  doc: "-l, --layout [fruchterman_reingold|kamada_kawai]\n-c, --cliques\n--help  \
    \                        Show this message and exit.\n"
  type: double
  inputBinding:
    prefix: --threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- dist-graph
