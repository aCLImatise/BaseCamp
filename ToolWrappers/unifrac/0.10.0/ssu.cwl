class: CommandLineTool
id: ssu.cwl
inputs:
- id: in_input_biom_table
  doc: The input BIOM table.
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_input_phylogeny_newick
  doc: The input phylogeny in newick.
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_the_method_
  doc: The method, [unweighted | weighted_normalized | weighted_unnormalized | generalized].
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_output_distance_matrix
  doc: The output distance matrix.
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_number_threads_default
  doc: '[OPTIONAL] The number of threads, default is 1.'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_generalized_unifrac_alpha
  doc: '[OPTIONAL] Generalized UniFrac alpha, default is 1.'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_bypass_tips_reduces
  doc: '[OPTIONAL] Bypass tips, reduces compute by about 50%.'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_vaw
  doc: '[OPTIONAL] Variance adjusted, default is to not adjust for variance.'
  type: boolean?
  inputBinding:
    prefix: --vaw
- id: in_mode
  doc: "[OPTIONAL] Mode of operation:\none-off : [DEFAULT] compute UniFrac.\npartial\
    \ : Compute UniFrac over a subset of stripes.\npartial-report : Start and stop\
    \ suggestions for partial compute.\nmerge-partial : Merge partial UniFrac results."
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_start
  doc: '[OPTIONAL] If mode==partial, the starting stripe.'
  type: boolean?
  inputBinding:
    prefix: --start
- id: in_stop
  doc: '[OPTIONAL] If mode==partial, the stopping stripe.'
  type: boolean?
  inputBinding:
    prefix: --stop
- id: in_partial_pattern
  doc: '[OPTIONAL] If mode==merge-partial, a glob pattern for partial outputs to merge.'
  type: boolean?
  inputBinding:
    prefix: --partial-pattern
- id: in_n_partials
  doc: '[OPTIONAL] If mode==partial-report, the number of partitions to compute.'
  type: boolean?
  inputBinding:
    prefix: --n-partials
- id: in_report_bare
  doc: '[OPTIONAL] If mode==partial-report, produce barebones output.'
  type: boolean?
  inputBinding:
    prefix: --report-bare
- id: in_method
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ssu
