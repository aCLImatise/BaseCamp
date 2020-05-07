class: CommandLineTool
id: desman.cwl
inputs:
- id: variant_file
  doc: input SNP frequencies
  type: string
  inputBinding:
    position: 0
- id: genomes
  doc: specify the haplotype number
  type: string
  inputBinding:
    prefix: --genomes
- id: f
  doc: '[FILTER_VARIANTS], --filter_variants [FILTER_VARIANTS] filters variants by
    negative binomial loge likelihood defaults to 3.84'
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: '[RANDOM_SELECT], --random_select [RANDOM_SELECT] selects subset of variants
    passing filter to build model and assigns others'
  type: boolean
  inputBinding:
    prefix: -r
- id: eta_file
  doc: reads initial eta matrix from file
  type: string
  inputBinding:
    prefix: --eta_file
- id: assign_file
  doc: calculates haplotype profiles for these SNPs using fitted gamma, eta values
  type: string
  inputBinding:
    prefix: --assign_file
- id: output_dir
  doc: string specifying output directory and file stubs
  type: string
  inputBinding:
    prefix: --output_dir
- id: optimise_p
  doc: optimise proportions in likelihood ratio test
  type: string
  inputBinding:
    prefix: --optimiseP
- id: i
  doc: '[NO_ITER], --no_iter [NO_ITER] Number of iterations of Gibbs sampler'
  type: boolean
  inputBinding:
    prefix: -i
- id: min_coverage
  doc: minimum coverage for sample to be included
  type: long
  inputBinding:
    prefix: --min_coverage
- id: max_q_value
  doc: specifies q value cut-off for variant detection defaults 1.0e-3
  type: long
  inputBinding:
    prefix: --max_qvalue
- id: random_seed
  doc: specifies seed for numpy random number generator defaults to 23724839 applied
    after random filtering
  type: string
  inputBinding:
    prefix: --random_seed
- id: v
  doc: '[MIN_VARIANT_FREQ], --min_variant_freq [MIN_VARIANT_FREQ] specifies minimum
    variant frequency defaults 0.01'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- desman
