class: CommandLineTool
id: cdbg_ops.cwl
inputs:
- id: graph
  doc: Prefix of graph files
  type: string
  inputBinding:
    prefix: --graph
- id: nodes
  doc: Name of .node file
  type: string
  inputBinding:
    prefix: --nodes
- id: edges
  doc: Name of .edges.dbg file
  type: string
  inputBinding:
    prefix: --edges
- id: source
  doc: Sequence of source node
  type: string
  inputBinding:
    prefix: --source
- id: source_list
  doc: File containing sequences of source nodes
  type: string
  inputBinding:
    prefix: --source-list
- id: target
  doc: Sequence of target node
  type: string
  inputBinding:
    prefix: --target
- id: all
  doc: Generate distances to all other unitigs
  type: boolean
  inputBinding:
    prefix: --all
- id: unit_igs
  doc: File containing unitigs to extend
  type: string
  inputBinding:
    prefix: --unitigs
- id: length
  doc: (=100)    Maximum extension length
  type: string
  inputBinding:
    prefix: --length
- id: repeats
  doc: Allow loops in extensions
  type: boolean
  inputBinding:
    prefix: --repeats
- id: mode
  doc: Mode of operation
  type: string
  inputBinding:
    prefix: --mode
outputs: []
cwlVersion: v1.1
baseCommand:
- cdbg-ops
