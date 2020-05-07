class: CommandLineTool
id: ldsc.py.cwl
inputs:
- id: print_cov
  doc: For use with --h2/--rg. This flag tells LDSC to print the covaraince matrix
    of the estimates.
  type: boolean
  inputBinding:
    prefix: --print-cov
- id: print_delete_vals
  doc: If this flag is set, LDSC will print the block jackknife delete-values (i.e.,
    the regression coefficeints estimated from the data with a block removed). The
    delete-values are formatted as a matrix with (# of jackknife blocks) rows and
    (# of LD Scores) columns.
  type: boolean
  inputBinding:
    prefix: --print-delete-vals
- id: chunk_size
  doc: Chunk size for LD Score calculation. Use the default.
  type: string
  inputBinding:
    prefix: --chunk-size
- id: pickle
  doc: Store .l2.ldscore files as pickles instead of gzipped tab-delimited text.
  type: boolean
  inputBinding:
    prefix: --pickle
- id: yes_really
  doc: Yes, I really want to compute whole-chromosome LD Score.
  type: boolean
  inputBinding:
    prefix: --yes-really
- id: invert_anyway
  doc: Force LDSC to attempt to invert ill-conditioned matrices.
  type: boolean
  inputBinding:
    prefix: --invert-anyway
- id: n_blocks
  doc: Number of block jackknife blocks.
  type: string
  inputBinding:
    prefix: --n-blocks
- id: not_m_5_50
  doc: This flag tells LDSC to use the .l2.M file instead of the .l2.M_5_50 file.
  type: boolean
  inputBinding:
    prefix: --not-M-5-50
- id: return_silly_things
  doc: Force ldsc to return silly genetic correlation estimates.
  type: boolean
  inputBinding:
    prefix: --return-silly-things
- id: no_check_alleles
  doc: For rg estimation, skip checking whether the alleles match. This check is redundant
    for pairs of chisq files generated using munge_sumstats.py and the same argument
    to the --merge-alleles flag.
  type: boolean
  inputBinding:
    prefix: --no-check-alleles
- id: samp_prev
  doc: Sample prevalence of binary phenotype (for conversion to liability scale).
  type: string
  inputBinding:
    prefix: --samp-prev
- id: pop_prev
  doc: Population prevalence of binary phenotype (for conversion to liability scale).
  type: string
  inputBinding:
    prefix: --pop-prev
outputs: []
cwlVersion: v1.1
baseCommand:
- ldsc.py
