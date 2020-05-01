#!/usr/bin/env cwl-runner

baseCommand:
- rfmix
class: CommandLineTool
cwlVersion: v1.0
id: rfmix
inputs:
- doc: Conditional Random Field spacing (# of SNPs)
  id: crf_spacing
  inputBinding:
    prefix: --crf-spacing
  type: double
- doc: Random forest window size (class estimation window size)
  id: rf_window_size
  inputBinding:
    prefix: --rf-window-size
  type: double
- doc: Weight of observation term relative to transition term in conditional random
    field
  id: crf_weight
  inputBinding:
    prefix: --crf-weight
  type: double
- doc: Average number of generations since expected admixture
  id: generations
  inputBinding:
    prefix: --generations
  type: double
- doc: Maximum number of EM iterations
  id: em_iterations
  inputBinding:
    prefix: --em-iterations
  type: long
- doc: In EM, analyze local ancestry of the reference panel and reclassify it
  id: reanalyze_reference
  inputBinding:
    prefix: --reanalyze-reference
  type: boolean
- doc: Terminal node size for random forest trees
  id: node_size
  inputBinding:
    prefix: --node-size
  type: long
- doc: Number of tree in random forest to estimate population class probability
  id: trees
  inputBinding:
    prefix: --trees
  type: long
- doc: Maximum proportion of missing data allowed to include a SNP
  id: max_missing
  inputBinding:
    prefix: --max-missing
  type: double
- doc: Specify random forest bootstrap mode as integer code (see manual)
  id: bootstrap_mode
  inputBinding:
    prefix: --bootstrap-mode
  type: long
- doc: With genetic sized rf windows, include at least this many SNPs regardless of
    span
  id: rf_minimum_snps
  inputBinding:
    prefix: --rf-minimum-snps
  type: long
- doc: Physical position range, specified as <start pos>-<end pos>, in Mbp (decimal
    allowed)
  id: analyze_range
  inputBinding:
    prefix: --analyze-range
  type: string
- doc: Turn on any debugging output
  id: debug
  inputBinding:
    prefix: --debug
  type: string
- doc: Force number of simultaneous thread for parallel execution
  id: n_threads
  inputBinding:
    prefix: --n-threads
  type: long
- doc: Seed value for random number generation (integer) (maybe specified in hexadecimal
    by preceeding with 0x), or the string "clock" to seed with the current system
    time.
  id: random_seed
  inputBinding:
    prefix: --random-seed
  type: string
