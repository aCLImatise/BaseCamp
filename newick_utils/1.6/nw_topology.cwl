class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nw_topology.cwl
inputs:
- id: keep_branch_lengths
  doc: ': keep branch lengths'
  type: boolean
  inputBinding:
    prefix: -b
- id: discard_inner_node
  doc: ': discard inner node labels'
  type: boolean
  inputBinding:
    prefix: -I
- id: discard_leaf_labels
  doc: ': discard leaf labels'
  type: boolean
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_topology
