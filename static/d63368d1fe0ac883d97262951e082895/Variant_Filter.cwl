class: CommandLineTool
id: Variant_Filter.py.cwl
inputs:
- id: variant_file
  doc: input SNP frequencies
  type: string
  inputBinding:
    position: 0
- id: f
  doc: '[FILTER_VARIANTS], --filter_variants [FILTER_VARIANTS] binomial loge likelihood
    species p-value threshold for initial filtering as chi2'
  type: boolean
  inputBinding:
    prefix: -f
- id: q
  doc: '[MAX_QVALUE], --max_qvalue [MAX_QVALUE] specifies q value cut-off for variant
    defaults 1.0e-3'
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: '[MIN_VARIANT_FREQ], --min_variant_freq [MIN_VARIANT_FREQ] specifies minimum
    variant frequency defaults 0.01'
  type: boolean
  inputBinding:
    prefix: -v
- id: min_coverage
  doc: minimum coverage for sample to be included defaults 5.0
  type: long
  inputBinding:
    prefix: --min_coverage
- id: outlier_thresh
  doc: threshold for COG filtering on median coverage outlier defaults to 2.0
  type: string
  inputBinding:
    prefix: --outlier_thresh
- id: sample_frac
  doc: fraction of samples with COG coverage exceeding median outlier for removal
  type: string
  inputBinding:
    prefix: --sample_frac
- id: output_stub
  doc: string specifying file stubs
  type: string
  inputBinding:
    prefix: --output_stub
- id: optimise_p
  doc: optimise proportions in likelihood ratio test default false
  type: boolean
  inputBinding:
    prefix: --optimiseP
- id: cog_filter
  doc: whether to apply COG filtering default false
  type: boolean
  inputBinding:
    prefix: --cog_filter
- id: random_seed
  doc: specifies seed for numpy random number generator defaults to 23724839
  type: string
  inputBinding:
    prefix: --random_seed
outputs: []
cwlVersion: v1.1
baseCommand:
- Variant_Filter.py
