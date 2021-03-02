class: CommandLineTool
id: sga_assemble.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_out_prefix
  doc: use NAME as the prefix of the output files (output files will be NAME-contigs.fa,
    etc)
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_min_overlap
  doc: "only use overlaps of at least LEN. This can be used to filter\nthe overlap\
    \ set so that the overlap step only needs to be run once."
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_transitive_reduction
  doc: remove transitive edges from the graph. Off by default.
  type: boolean?
  inputBinding:
    prefix: --transitive-reduction
- id: in_max_edges
  doc: "limit each vertex to a maximum of N edges. For highly repetitive regions\n\
    this helps save memory by culling excessive edges around unresolvable repeats\
    \ (default: 128)"
  type: long?
  inputBinding:
    prefix: --max-edges
- id: in_bubble
  doc: 'perform N bubble removal steps (default: 3)'
  type: long?
  inputBinding:
    prefix: --bubble
- id: in_max_divergence
  doc: 'only remove variation if the divergence between sequences is less than F (default:
    0.05)'
  type: long?
  inputBinding:
    prefix: --max-divergence
- id: in_max_gap_divergence
  doc: "only remove variation if the divergence between sequences when only counting\
    \ indels is less than F (default: 0.01)\nSetting this to 0.0 will suppress removing\
    \ indel variation"
  type: long?
  inputBinding:
    prefix: --max-gap-divergence
- id: in_max_in_del
  doc: 'do not remove variation that is an indel of length greater than D (default:
    20)'
  type: long?
  inputBinding:
    prefix: --max-indel
- id: in_cut_terminal
  doc: 'cut off terminal branches in N rounds (default: 10)'
  type: long?
  inputBinding:
    prefix: --cut-terminal
- id: in_min_branch_length
  doc: 'remove terminal branches only if they are less than LEN bases in length (default:
    150)'
  type: long?
  inputBinding:
    prefix: --min-branch-length
- id: in_resolve_small
  doc: "resolve small repeats using spanning overlaps when the difference between\
    \ the shortest\nand longest overlap is greater than LEN (default: not performed)"
  type: string?
  inputBinding:
    prefix: --resolve-small
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sga
- assemble
