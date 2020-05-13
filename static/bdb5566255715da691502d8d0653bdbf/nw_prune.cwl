class: CommandLineTool
id: nw_prune.cwl
inputs:
- id: f
  doc: ': node labels are in a file whose name is the second argument, instead of
    being passed  on the command line. There should be one label per line, and no
    leading or trailing whitespace.'
  type: boolean
  inputBinding:
    prefix: -f
- id: v
  doc: ": reverse: prune nodes whose labels are NOT passed on the command line. Inner\
    \ nodes are not pruned. This allows pruning of trees with support values, which\
    \ syntactically are node labels, withouti inner nodes disappearing because their\
    \ 'label' was not passed on the command line."
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_prune
