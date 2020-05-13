class: CommandLineTool
id: ustacks.cwl
inputs:
- id: keep_high_cov
  doc: ': disable the algorithm that removes highly-repetitive stacks and nearby errors.'
  type: boolean
  inputBinding:
    prefix: --keep-high-cov
- id: high_cov_th_res
  doc: ': highly-repetitive stacks threshold, in standard deviation units (default:
    3.0).'
  type: boolean
  inputBinding:
    prefix: --high-cov-thres
- id: max_locus_stacks
  doc: ': maximum number of stacks at a single de novo locus (default 3).'
  type: string
  inputBinding:
    prefix: --max-locus-stacks
- id: k_len
  doc: ': specify k-mer size for matching between alleles and loci (automatically
    calculated by default).'
  type: string
  inputBinding:
    prefix: --k-len
- id: max_gaps
  doc: ': number of gaps allowed between stacks before merging (default: 2).'
  type: boolean
  inputBinding:
    prefix: --max-gaps
- id: min_aln_len
  doc: ': minimum length of aligned sequence in a gapped alignment (default: 0.80).'
  type: boolean
  inputBinding:
    prefix: --min-aln-len
- id: disable_gapped
  doc: ': do not preform gapped alignments between stacks (default: gapped alignements
    enabled).'
  type: boolean
  inputBinding:
    prefix: --disable-gapped
- id: alpha
  doc: ': chi square significance level required to call a heterozygote or homozygote,
    either 0.1, 0.05 (default), 0.01, or 0.001.'
  type: string
  inputBinding:
    prefix: --alpha
- id: bound_low
  doc: ': lower bound for epsilon, the error rate, between 0 and 1.0 (default 0).'
  type: string
  inputBinding:
    prefix: --bound-low
- id: bound_high
  doc: ': upper bound for epsilon, the error rate, between 0 and 1.0 (default 1).'
  type: string
  inputBinding:
    prefix: --bound-high
- id: bc_err_freq
  doc: ': specify the barcode error frequency, between 0 and 1.0.'
  type: string
  inputBinding:
    prefix: --bc-err-freq
outputs: []
cwlVersion: v1.1
baseCommand:
- ustacks
