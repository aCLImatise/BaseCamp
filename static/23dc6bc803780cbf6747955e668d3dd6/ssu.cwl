class: CommandLineTool
id: ../../../ssu.cwl
inputs:
- id: input_biom_table
  doc: The input BIOM table.
  type: boolean
  inputBinding:
    prefix: -i
- id: input_phylogeny_newick
  doc: The input phylogeny in newick.
  type: boolean
  inputBinding:
    prefix: -t
- id: the_method_
  doc: The method, [unweighted | weighted_normalized | weighted_unnormalized | generalized].
  type: boolean
  inputBinding:
    prefix: -m
- id: output_distance_matrix
  doc: The output distance matrix.
  type: boolean
  inputBinding:
    prefix: -o
- id: number_threads_default
  doc: '[OPTIONAL] The number of threads, default is 1.'
  type: boolean
  inputBinding:
    prefix: -n
- id: generalized_unifrac_alpha
  doc: '[OPTIONAL] Generalized UniFrac alpha, default is 1.'
  type: boolean
  inputBinding:
    prefix: -a
- id: bypass_tips_reduces
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
- id: method
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu
