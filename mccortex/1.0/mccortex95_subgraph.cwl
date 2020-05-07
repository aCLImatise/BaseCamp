class: CommandLineTool
id: mccortex95_subgraph.cwl
inputs:
- id: dist
  doc: 'Number of kmers to extend by [default: 0]'
  type: string
  inputBinding:
    prefix: --dist
- id: invert
  doc: Dump kmers not in subgraph
  type: boolean
  inputBinding:
    prefix: --invert
- id: unit_igs
  doc: Grab entire runs of kmers that are touched by a read
  type: boolean
  inputBinding:
    prefix: --unitigs
outputs: []
cwlVersion: v1.1
baseCommand:
- mccortex95
- subgraph
