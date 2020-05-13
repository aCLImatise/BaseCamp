class: CommandLineTool
id: sga_assemble.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: out_prefix
  doc: use NAME as the prefix of the output files (output files will be NAME-contigs.fa,
    etc)
  type: string
  inputBinding:
    prefix: --out-prefix
- id: min_overlap
  doc: only use overlaps of at least LEN. This can be used to filter the overlap set
    so that the overlap step only needs to be run once.
  type: string
  inputBinding:
    prefix: --min-overlap
- id: transitive_reduction
  doc: remove transitive edges from the graph. Off by default.
  type: boolean
  inputBinding:
    prefix: --transitive-reduction
- id: max_edges
  doc: 'limit each vertex to a maximum of N edges. For highly repetitive regions this
    helps save memory by culling excessive edges around unresolvable repeats (default:
    128)'
  type: string
  inputBinding:
    prefix: --max-edges
- id: bubble
  doc: 'perform N bubble removal steps (default: 3)'
  type: string
  inputBinding:
    prefix: --bubble
- id: max_divergence
  doc: 'only remove variation if the divergence between sequences is less than F (default:
    0.05)'
  type: string
  inputBinding:
    prefix: --max-divergence
- id: max_gap_divergence
  doc: 'only remove variation if the divergence between sequences when only counting
    indels is less than F (default: 0.01) Setting this to 0.0 will suppress removing
    indel variation'
  type: string
  inputBinding:
    prefix: --max-gap-divergence
- id: max_in_del
  doc: 'do not remove variation that is an indel of length greater than D (default:
    20)'
  type: string
  inputBinding:
    prefix: --max-indel
- id: cut_terminal
  doc: 'cut off terminal branches in N rounds (default: 10)'
  type: string
  inputBinding:
    prefix: --cut-terminal
- id: min_branch_length
  doc: 'remove terminal branches only if they are less than LEN bases in length (default:
    150)'
  type: string
  inputBinding:
    prefix: --min-branch-length
- id: resolve_small
  doc: 'resolve small repeats using spanning overlaps when the difference between
    the shortest and longest overlap is greater than LEN (default: not performed)'
  type: string
  inputBinding:
    prefix: --resolve-small
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- assemble
