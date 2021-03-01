class: CommandLineTool
id: Variant_Filter.py.cwl
inputs:
- id: in_binomial_loge_likelihood
  doc: "[FILTER_VARIANTS], --filter_variants [FILTER_VARIANTS]\nbinomial loge likelihood\
    \ species p-value threshold for\ninitial filtering as chi2"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_specifies_value_
  doc: "[MAX_QVALUE], --max_qvalue [MAX_QVALUE]\nspecifies q value cut-off for variant\
    \ defaults 1.0e-3"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_specifies_minimum_defaults
  doc: "[MIN_VARIANT_FREQ], --min_variant_freq [MIN_VARIANT_FREQ]\nspecifies minimum\
    \ variant frequency defaults 0.01"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_min_coverage
  doc: "minimum coverage for sample to be included defaults\n5.0"
  type: long?
  inputBinding:
    prefix: --min_coverage
- id: in_outlier_thresh
  doc: "threshold for COG filtering on median coverage outlier\ndefaults to 2.0"
  type: double?
  inputBinding:
    prefix: --outlier_thresh
- id: in_sample_frac
  doc: "fraction of samples with COG coverage exceeding median\noutlier for removal"
  type: string?
  inputBinding:
    prefix: --sample_frac
- id: in_output_stub
  doc: string specifying file stubs
  type: File?
  inputBinding:
    prefix: --output_stub
- id: in_optimise_p
  doc: optimise proportions in likelihood ratio test default
  type: boolean?
  inputBinding:
    prefix: --optimiseP
- id: in_random_seed
  doc: "specifies seed for numpy random number generator\ndefaults to 23724839\n"
  type: long?
  inputBinding:
    prefix: --random_seed
- id: in_false
  doc: -c, --cog_filter      whether to apply COG filtering default false
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Variant_Filter.py
