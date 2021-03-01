class: CommandLineTool
id: desman.cwl
inputs:
- id: in_genomes
  doc: specify the haplotype number
  type: long?
  inputBinding:
    prefix: --genomes
- id: in_filters_variants_negative
  doc: "[FILTER_VARIANTS], --filter_variants [FILTER_VARIANTS]\nfilters variants by\
    \ negative binomial loge likelihood\ndefaults to 3.84"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_selects_subset_variants
  doc: "[RANDOM_SELECT], --random_select [RANDOM_SELECT]\nselects subset of variants\
    \ passing filter to build\nmodel and assigns others"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_eta_file
  doc: reads initial eta matrix from file
  type: File?
  inputBinding:
    prefix: --eta_file
- id: in_assign_file
  doc: "calculates haplotype profiles for these SNPs using\nfitted gamma, eta values"
  type: File?
  inputBinding:
    prefix: --assign_file
- id: in_output_dir
  doc: string specifying output directory and file stubs
  type: File?
  inputBinding:
    prefix: --output_dir
- id: in_optimise_p
  doc: optimise proportions in likelihood ratio test
  type: string?
  inputBinding:
    prefix: --optimiseP
- id: in_number_iterations_gibbs
  doc: "[NO_ITER], --no_iter [NO_ITER]\nNumber of iterations of Gibbs sampler"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_min_coverage
  doc: minimum coverage for sample to be included
  type: long?
  inputBinding:
    prefix: --min_coverage
- id: in_max_q_value
  doc: "specifies q value cut-off for variant detection\ndefaults 1.0e-3"
  type: double?
  inputBinding:
    prefix: --max_qvalue
- id: in_random_seed
  doc: "specifies seed for numpy random number generator\ndefaults to 23724839 applied\
    \ after random filtering"
  type: long?
  inputBinding:
    prefix: --random_seed
- id: in_specifies_minimum_defaults
  doc: "[MIN_VARIANT_FREQ], --min_variant_freq [MIN_VARIANT_FREQ]\nspecifies minimum\
    \ variant frequency defaults 0.01\n"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_filter_variants
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_random_select
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: string specifying output directory and file stubs
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- desman
