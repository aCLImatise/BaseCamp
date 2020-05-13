class: CommandLineTool
id: nw_topology.cwl
inputs:
- id: b
  doc: ': keep branch lengths'
  type: boolean
  inputBinding:
    prefix: -b
- id: i
  doc: ': discard inner node labels'
  type: boolean
  inputBinding:
    prefix: -I
- id: l
  doc: ': discard leaf labels'
  type: boolean
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_topology
