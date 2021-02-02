class: CommandLineTool
id: sga_subgraph.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_out
  doc: 'write the subgraph to FILE (default: subgraph.asqg.gz)'
  type: File
  inputBinding:
    prefix: --out
- id: in_size
  doc: "the size of the subgraph to extract, all vertices that are at most N hops\n\
    away from the root will be included (default: 5)"
  type: long
  inputBinding:
    prefix: --size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- subgraph
