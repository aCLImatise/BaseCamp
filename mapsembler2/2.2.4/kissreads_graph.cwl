class: CommandLineTool
id: ../../../kissreads_graph.cwl
inputs:
- id: this_message_exit
  doc: this message and exit
  type: string
  inputBinding:
    prefix: -h
- id: t
  doc: '"c" "coverage"  "m" "modify" '
  type: string
  inputBinding:
    prefix: -t
- id: write_obtained_output
  doc: ': write obtained graph. Default: standard output '
  type: File
  inputBinding:
    prefix: -o
- id: will_use_seeds
  doc: ': will use seeds of length size_seed. Default: 25.'
  type: long
  inputBinding:
    prefix: -k
- id: will_consider_edge
  doc: ': Will consider an edge as coherent if coverage (number of reads from all
    sets using this edge) is at least min_coverage. Default: 2 '
  type: long
  inputBinding:
    prefix: -c
- id: will_map_read
  doc: ': Will map a read on the graph with at most max_substitutions substitutions.
    Default: 1 '
  type: long
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- kissreads_graph
