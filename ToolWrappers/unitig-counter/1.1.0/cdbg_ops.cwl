class: CommandLineTool
id: cdbg_ops.cwl
inputs:
- id: in_graph
  doc: Prefix of graph files
  type: string?
  inputBinding:
    prefix: --graph
- id: in_nodes
  doc: Name of .node file
  type: File?
  inputBinding:
    prefix: --nodes
- id: in_edges
  doc: Name of .edges.dbg file
  type: File?
  inputBinding:
    prefix: --edges
- id: in_source
  doc: Sequence of source node
  type: string?
  inputBinding:
    prefix: --source
- id: in_source_list
  doc: File containing sequences of source nodes
  type: File?
  inputBinding:
    prefix: --source-list
- id: in_target
  doc: Sequence of target node
  type: string?
  inputBinding:
    prefix: --target
- id: in_all
  doc: Generate distances to all other unitigs
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_unit_igs
  doc: File containing unitigs to extend
  type: File?
  inputBinding:
    prefix: --unitigs
- id: in_length
  doc: (=100)    Maximum extension length
  type: long?
  inputBinding:
    prefix: --length
- id: in_repeats
  doc: Allow loops in extensions
  type: boolean?
  inputBinding:
    prefix: --repeats
- id: in_mode
  doc: Mode of operation
  type: string?
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cdbg-ops
