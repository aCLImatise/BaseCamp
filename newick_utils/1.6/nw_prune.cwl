#!/usr/bin/env cwl-runner

baseCommand:
- nw_prune
class: CommandLineTool
cwlVersion: v1.0
id: nw_prune
inputs:
- doc: ': node labels are in a file whose name is the second argument, instead of
    being passed  on the command line. There should be one label per line, and no
    leading or trailing whitespace.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ": reverse: prune nodes whose labels are NOT passed on the command line. Inner\
    \ nodes are not pruned. This allows pruning of trees with support values, which\
    \ syntactically are node labels, withouti inner nodes disappearing because their\
    \ 'label' was not passed on the command line."
  id: v
  inputBinding:
    prefix: -v
  type: boolean
