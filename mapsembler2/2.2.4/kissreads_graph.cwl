#!/usr/bin/env cwl-runner

baseCommand:
- kissreads_graph
class: CommandLineTool
cwlVersion: v1.0
id: kissreads_graph
inputs:
- doc: this message and exit
  id: h
  inputBinding:
    prefix: -h
  type: string
- doc: '"c" "coverage"  "m" "modify" '
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ': write obtained graph. Default: standard output '
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: ': will use seeds of length size_seed. Default: 25.'
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: ': Will consider an edge as coherent if coverage (number of reads from all
    sets using this edge) is at least min_coverage. Default: 2 '
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: ': Will map a read on the graph with at most max_substitutions substitutions.
    Default: 1 '
  id: d
  inputBinding:
    prefix: -d
  type: long
