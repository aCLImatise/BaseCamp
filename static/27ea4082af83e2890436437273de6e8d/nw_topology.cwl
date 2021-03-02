class: CommandLineTool
id: nw_topology.cwl
inputs:
- id: in_keep_branch_lengths
  doc: ': keep branch lengths'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_discard_inner_node
  doc: ': discard inner node labels'
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_discard_leaf_labels
  doc: ': discard leaf labels'
  type: boolean?
  inputBinding:
    prefix: -L
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nw_topology
