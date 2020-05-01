#!/usr/bin/env cwl-runner

baseCommand:
- Variant_Filter.py
class: CommandLineTool
cwlVersion: v1.0
id: variant_filter.py
inputs:
- doc: input SNP frequencies
  id: variant_file
  inputBinding:
    position: 0
  type: string
- doc: '[FILTER_VARIANTS], --filter_variants [FILTER_VARIANTS] binomial loge likelihood
    species p-value threshold for initial filtering as chi2'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[MAX_QVALUE], --max_qvalue [MAX_QVALUE] specifies q value cut-off for variant
    defaults 1.0e-3'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: '[MIN_VARIANT_FREQ], --min_variant_freq [MIN_VARIANT_FREQ] specifies minimum
    variant frequency defaults 0.01'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: minimum coverage for sample to be included defaults 5.0
  id: min_coverage
  inputBinding:
    prefix: --min_coverage
  type: long
- doc: threshold for COG filtering on median coverage outlier defaults to 2.0
  id: outlier_thresh
  inputBinding:
    prefix: --outlier_thresh
  type: string
- doc: fraction of samples with COG coverage exceeding median outlier for removal
  id: sample_frac
  inputBinding:
    prefix: --sample_frac
  type: string
- doc: string specifying file stubs
  id: output_stub
  inputBinding:
    prefix: --output_stub
  type: string
- doc: optimise proportions in likelihood ratio test default false
  id: optimise_p
  inputBinding:
    prefix: --optimiseP
  type: boolean
- doc: whether to apply COG filtering default false
  id: cog_filter
  inputBinding:
    prefix: --cog_filter
  type: boolean
- doc: specifies seed for numpy random number generator defaults to 23724839
  id: random_seed
  inputBinding:
    prefix: --random_seed
  type: string
