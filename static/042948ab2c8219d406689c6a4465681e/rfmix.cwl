class: CommandLineTool
id: rfmix.cwl
inputs:
- id: crf_spacing
  doc: Conditional Random Field spacing (# of SNPs)
  type: double
  inputBinding:
    prefix: --crf-spacing
- id: rf_window_size
  doc: Random forest window size (class estimation window size)
  type: double
  inputBinding:
    prefix: --rf-window-size
- id: crf_weight
  doc: Weight of observation term relative to transition term in conditional random
    field
  type: double
  inputBinding:
    prefix: --crf-weight
- id: generations
  doc: Average number of generations since expected admixture
  type: double
  inputBinding:
    prefix: --generations
- id: em_iterations
  doc: Maximum number of EM iterations
  type: long
  inputBinding:
    prefix: --em-iterations
- id: reanalyze_reference
  doc: In EM, analyze local ancestry of the reference panel and reclassify it
  type: boolean
  inputBinding:
    prefix: --reanalyze-reference
- id: node_size
  doc: Terminal node size for random forest trees
  type: long
  inputBinding:
    prefix: --node-size
- id: trees
  doc: Number of tree in random forest to estimate population class probability
  type: long
  inputBinding:
    prefix: --trees
- id: max_missing
  doc: Maximum proportion of missing data allowed to include a SNP
  type: double
  inputBinding:
    prefix: --max-missing
- id: bootstrap_mode
  doc: Specify random forest bootstrap mode as integer code (see manual)
  type: long
  inputBinding:
    prefix: --bootstrap-mode
- id: rf_minimum_snps
  doc: With genetic sized rf windows, include at least this many SNPs regardless of
    span
  type: long
  inputBinding:
    prefix: --rf-minimum-snps
- id: analyze_range
  doc: Physical position range, specified as <start pos>-<end pos>, in Mbp (decimal
    allowed)
  type: string
  inputBinding:
    prefix: --analyze-range
- id: debug
  doc: Turn on any debugging output
  type: string
  inputBinding:
    prefix: --debug
- id: n_threads
  doc: Force number of simultaneous thread for parallel execution
  type: long
  inputBinding:
    prefix: --n-threads
- id: random_seed
  doc: Seed value for random number generation (integer) (maybe specified in hexadecimal
    by preceeding with 0x), or the string "clock" to seed with the current system
    time.
  type: string
  inputBinding:
    prefix: --random-seed
outputs: []
cwlVersion: v1.1
baseCommand:
- rfmix
