class: CommandLineTool
id: sga_subgraph.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: out
  doc: 'write the subgraph to FILE (default: subgraph.asqg.gz)'
  type: File
  inputBinding:
    prefix: --out
- id: size
  doc: 'the size of the subgraph to extract, all vertices that are at most N hops
    away from the root will be included (default: 5)'
  type: string
  inputBinding:
    prefix: --size
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- subgraph
