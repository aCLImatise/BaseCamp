class: CommandLineTool
id: graftM.cwl
inputs:
- id: graft_m
  doc: 0.13.1
  type: string
  inputBinding:
    position: 0
- id: utilities
  doc: tree          ->  Decorate or reroot phylogenetic trees for graft packages.
    archive       ->  Compress or decompress a graftm package.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- graftM
