class: CommandLineTool
id: mmseqs_lca.cwl
inputs:
- id: in_lca_ranks
  doc: Ranks to return in LCA computation
  type: boolean
  inputBinding:
    prefix: --lca-ranks
- id: in_blacklist
  doc: 12908,28384     Comma separted list of ignored taxa in LCA computation
  type: boolean
  inputBinding:
    prefix: --blacklist
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mmseqs
- lca
