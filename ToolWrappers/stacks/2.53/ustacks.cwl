class: CommandLineTool
id: ustacks.cwl
inputs:
- id: in_name
  doc: ': a name for the sample (default: input file name minus the suffix).'
  type: boolean
  inputBinding:
    prefix: --name
- id: in_keep_high_cov
  doc: ': disable the algorithm that removes highly-repetitive stacks and nearby errors.'
  type: boolean
  inputBinding:
    prefix: --keep-high-cov
- id: in_high_cov_th_res
  doc: ': highly-repetitive stacks threshold, in standard deviation units (default:
    3.0).'
  type: boolean
  inputBinding:
    prefix: --high-cov-thres
- id: in_max_locus_stacks
  doc: ': maximum number of stacks at a single de novo locus (default 3).'
  type: long
  inputBinding:
    prefix: --max-locus-stacks
- id: in_k_len
  doc: ': specify k-mer size for matching between alleles and loci (automatically
    calculated by default).'
  type: long
  inputBinding:
    prefix: --k-len
- id: in_max_gaps
  doc: ': number of gaps allowed between stacks before merging (default: 2).'
  type: boolean
  inputBinding:
    prefix: --max-gaps
- id: in_min_aln_len
  doc: ': minimum length of aligned sequence in a gapped alignment (default: 0.80).'
  type: boolean
  inputBinding:
    prefix: --min-aln-len
- id: in_disable_gapped
  doc: ': do not preform gapped alignments between stacks (default: gapped alignements
    enabled).'
  type: boolean
  inputBinding:
    prefix: --disable-gapped
- id: in_model_type
  doc: ": either 'snp' (default), 'bounded', or 'fixed'"
  type: boolean
  inputBinding:
    prefix: --model-type
- id: in_alpha
  doc: ': chi square significance level required to call a heterozygote or homozygote,
    either 0.1, 0.05 (default), 0.01, or 0.001.'
  type: long
  inputBinding:
    prefix: --alpha
- id: in_bound_low
  doc: ': lower bound for epsilon, the error rate, between 0 and 1.0 (default 0).'
  type: long
  inputBinding:
    prefix: --bound-low
- id: in_bound_high
  doc: ': upper bound for epsilon, the error rate, between 0 and 1.0 (default 1).'
  type: long
  inputBinding:
    prefix: --bound-high
- id: in_bc_err_freq
  doc: ': specify the barcode error frequency, between 0 and 1.0.'
  type: long
  inputBinding:
    prefix: --bc-err-freq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ustacks
