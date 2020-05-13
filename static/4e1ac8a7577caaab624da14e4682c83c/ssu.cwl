class: CommandLineTool
id: ssu.cwl
inputs:
- id: i
  doc: The input BIOM table.
  type: boolean
  inputBinding:
    prefix: -i
- id: t
  doc: The input phylogeny in newick.
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: The method, [unweighted | weighted_normalized | weighted_unnormalized | generalized].
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: The output distance matrix.
  type: boolean
  inputBinding:
    prefix: -o
- id: n
  doc: '[OPTIONAL] The number of threads, default is 1.'
  type: boolean
  inputBinding:
    prefix: -n
- id: a
  doc: '[OPTIONAL] Generalized UniFrac alpha, default is 1.'
  type: boolean
  inputBinding:
    prefix: -a
- id: f
  doc: '[OPTIONAL] Bypass tips, reduces compute by about 50%.'
  type: boolean
  inputBinding:
    prefix: -f
- id: vaw
  doc: '[OPTIONAL] Variance adjusted, default is to not adjust for variance.'
  type: boolean
  inputBinding:
    prefix: --vaw
- id: mode
  doc: '[OPTIONAL] Mode of operation: one-off : [DEFAULT] compute UniFrac. partial
    : Compute UniFrac over a subset of stripes. partial-report : Start and stop suggestions
    for partial compute. merge-partial : Merge partial UniFrac results.'
  type: boolean
  inputBinding:
    prefix: --mode
- id: start
  doc: '[OPTIONAL] If mode==partial, the starting stripe.'
  type: boolean
  inputBinding:
    prefix: --start
- id: stop
  doc: '[OPTIONAL] If mode==partial, the stopping stripe.'
  type: boolean
  inputBinding:
    prefix: --stop
- id: partial_pattern
  doc: '[OPTIONAL] If mode==merge-partial, a glob pattern for partial outputs to merge.'
  type: boolean
  inputBinding:
    prefix: --partial-pattern
- id: n_partials
  doc: '[OPTIONAL] If mode==partial-report, the number of partitions to compute.'
  type: boolean
  inputBinding:
    prefix: --n-partials
- id: report_bare
  doc: '[OPTIONAL] If mode==partial-report, produce barebones output.'
  type: boolean
  inputBinding:
    prefix: --report-bare
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu
