class: CommandLineTool
id: nw_prune_filename|_.cwl
inputs:
- id: in_node_labels_file
  doc: ": node labels are in a file whose name is the second argument,\ninstead of\
    \ being passed  on the command line.\nThere should be one label per line, and\
    \ no leading or trailing\nwhitespace."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_reverse_prune_nodes
  doc: ": reverse: prune nodes whose labels are NOT passed on the command\nline. Inner\
    \ nodes are not pruned. This allows pruning of trees\nwith support values, which\
    \ syntactically are node labels, withouti\ninner nodes disappearing because their\
    \ 'label' was not passed on\nthe command line."
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nw_prune
- filename|-
