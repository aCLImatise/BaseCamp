#!/usr/bin/env cwl-runner

baseCommand:
- desman
class: CommandLineTool
cwlVersion: v1.0
id: desman
inputs:
- doc: input SNP frequencies
  id: variant_file
  inputBinding:
    position: 0
  type: string
- doc: specify the haplotype number
  id: genomes
  inputBinding:
    prefix: --genomes
  type: string
- doc: '[FILTER_VARIANTS], --filter_variants [FILTER_VARIANTS] filters variants by
    negative binomial loge likelihood defaults to 3.84'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[RANDOM_SELECT], --random_select [RANDOM_SELECT] selects subset of variants
    passing filter to build model and assigns others'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: reads initial eta matrix from file
  id: eta_file
  inputBinding:
    prefix: --eta_file
  type: string
- doc: calculates haplotype profiles for these SNPs using fitted gamma, eta values
  id: assign_file
  inputBinding:
    prefix: --assign_file
  type: string
- doc: string specifying output directory and file stubs
  id: output_dir
  inputBinding:
    prefix: --output_dir
  type: string
- doc: optimise proportions in likelihood ratio test
  id: optimise_p
  inputBinding:
    prefix: --optimiseP
  type: string
- doc: '[NO_ITER], --no_iter [NO_ITER] Number of iterations of Gibbs sampler'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: minimum coverage for sample to be included
  id: min_coverage
  inputBinding:
    prefix: --min_coverage
  type: long
- doc: specifies q value cut-off for variant detection defaults 1.0e-3
  id: max_q_value
  inputBinding:
    prefix: --max_qvalue
  type: long
- doc: specifies seed for numpy random number generator defaults to 23724839 applied
    after random filtering
  id: random_seed
  inputBinding:
    prefix: --random_seed
  type: string
- doc: '[MIN_VARIANT_FREQ], --min_variant_freq [MIN_VARIANT_FREQ] specifies minimum
    variant frequency defaults 0.01'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
