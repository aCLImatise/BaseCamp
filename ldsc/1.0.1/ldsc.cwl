#!/usr/bin/env cwl-runner

baseCommand:
- ldsc.py
class: CommandLineTool
cwlVersion: v1.0
id: ldsc.py
inputs:
- doc: For use with --h2/--rg. This flag tells LDSC to print the covaraince matrix
    of the estimates.
  id: print_cov
  inputBinding:
    prefix: --print-cov
  type: boolean
- doc: If this flag is set, LDSC will print the block jackknife delete-values (i.e.,
    the regression coefficeints estimated from the data with a block removed). The
    delete-values are formatted as a matrix with (# of jackknife blocks) rows and
    (# of LD Scores) columns.
  id: print_delete_vals
  inputBinding:
    prefix: --print-delete-vals
  type: boolean
- doc: Chunk size for LD Score calculation. Use the default.
  id: chunk_size
  inputBinding:
    prefix: --chunk-size
  type: string
- doc: Store .l2.ldscore files as pickles instead of gzipped tab-delimited text.
  id: pickle
  inputBinding:
    prefix: --pickle
  type: boolean
- doc: Yes, I really want to compute whole-chromosome LD Score.
  id: yes_really
  inputBinding:
    prefix: --yes-really
  type: boolean
- doc: Force LDSC to attempt to invert ill-conditioned matrices.
  id: invert_anyway
  inputBinding:
    prefix: --invert-anyway
  type: boolean
- doc: Number of block jackknife blocks.
  id: n_blocks
  inputBinding:
    prefix: --n-blocks
  type: string
- doc: This flag tells LDSC to use the .l2.M file instead of the .l2.M_5_50 file.
  id: not_m_5_50
  inputBinding:
    prefix: --not-M-5-50
  type: boolean
- doc: Force ldsc to return silly genetic correlation estimates.
  id: return_silly_things
  inputBinding:
    prefix: --return-silly-things
  type: boolean
- doc: For rg estimation, skip checking whether the alleles match. This check is redundant
    for pairs of chisq files generated using munge_sumstats.py and the same argument
    to the --merge-alleles flag.
  id: no_check_alleles
  inputBinding:
    prefix: --no-check-alleles
  type: boolean
- doc: Sample prevalence of binary phenotype (for conversion to liability scale).
  id: samp_prev
  inputBinding:
    prefix: --samp-prev
  type: string
- doc: Population prevalence of binary phenotype (for conversion to liability scale).
  id: pop_prev
  inputBinding:
    prefix: --pop-prev
  type: string
