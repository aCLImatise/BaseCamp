class: CommandLineTool
id: kissreads_graph.cwl
inputs:
- id: h
  doc: this message and exit
  type: string
  inputBinding:
    prefix: -h
- id: t
  doc: '"c" "coverage"  "m" "modify" '
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: ': write obtained graph. Default: standard output '
  type: File
  inputBinding:
    prefix: -o
- id: k
  doc: ': will use seeds of length size_seed. Default: 25.'
  type: long
  inputBinding:
    prefix: -k
- id: c
  doc: ': Will consider an edge as coherent if coverage (number of reads from all
    sets using this edge) is at least min_coverage. Default: 2 '
  type: long
  inputBinding:
    prefix: -c
- id: d
  doc: ': Will map a read on the graph with at most max_substitutions substitutions.
    Default: 1 '
  type: long
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- kissreads_graph
