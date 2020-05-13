class: CommandLineTool
id: mmseqs_lca.cwl
inputs:
- id: lca_ranks
  doc: 'Ranks to return in LCA computation                          '
  type: boolean
  inputBinding:
    prefix: --lca-ranks
- id: blacklist
  doc: '12908,28384     Comma separted list of ignored taxa in LCA computation      '
  type: boolean
  inputBinding:
    prefix: --blacklist
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- lca
