class: CommandLineTool
id: eqtlbma_avg_bfs.cwl
inputs:
- id: in_verbose
  doc: level (0/default=1/2/3)
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_in
  doc: pattern to glob '_l10abfs_raw' files from 'eqtlbma_bf'
  type: boolean?
  inputBinding:
    prefix: --in
- id: in_g_wts
  doc: file with grid weights (one per line, only the value)
  type: boolean?
  inputBinding:
    prefix: --gwts
- id: in_gtk
  doc: "ind-ex/icies of grid weights to keep (all by default)\ne.g. '1+3+5+7+9' to\
    \ keep only those with no heterogeneity"
  type: boolean?
  inputBinding:
    prefix: --gtk
- id: in_model
  doc: which model (default=configs/types)
  type: boolean?
  inputBinding:
    prefix: --model
- id: in_n_sub_grp
  doc: of subgroups
  type: long?
  inputBinding:
    prefix: --nsubgrp
- id: in_dim
  doc: dimension of the model (nb of active configs or types)
  type: boolean?
  inputBinding:
    prefix: --dim
- id: in_cwts
  doc: "file with configuration weights (one per line, name<sep>value)\nonly a subset\
    \ of the configs can be given, in agreement with --nsubgrp and --dim"
  type: boolean?
  inputBinding:
    prefix: --cwts
- id: in_t_swts
  doc: file with type and subgroup weights (one per line, name<sep>value)
  type: boolean?
  inputBinding:
    prefix: --tswts
- id: in_save
  doc: "precise what to save (bf/post/bf+post)\n'post' requires also options --pi0\
    \ and --post"
  type: boolean?
  inputBinding:
    prefix: --save
- id: in_pi_zero
  doc: "proba for a gene to have no eQTL in any subgroup\nif not provided, BFs will\
    \ be saved instead of posterior probability"
  type: boolean?
  inputBinding:
    prefix: --pi0
- id: in_post
  doc: "save various kinds of posterior probabilities (e.g. 'a+b')\na: the gene has\
    \ at least one eQTL\nb: the SNP is 'the' eQTL for the gene, in at least one subgroup,\
    \ given that the gene has exactly one eQTL,\nassuming all cis SNPs are equally\
    \ likely and a single eQTL per gene\nc: the SNP is 'an' eQTL for the gene, in\
    \ at least one subgroup, given that the gene contains at least one eQTL\nand that\
    \ SNPs are independent\nd: the SNP is an eQTL in subgroup s, given that it is\
    \ 'the' eQTL for the gene, the configs/types being marginalized"
  type: boolean?
  inputBinding:
    prefix: --post
- id: in_gene
  doc: file with subset of gene(s) to keep (one per line)
  type: boolean?
  inputBinding:
    prefix: --gene
- id: in_snp
  doc: "file with subset of snp(s) to keep (one per line)\ncaution, it can change\
    \ the gene-level BFs and posteriors"
  type: boolean?
  inputBinding:
    prefix: --snp
- id: in_gene_snp
  doc: "file with subset of gene-snp pai(s) to keep (gene<tab>snp, one per line)\n\
    caution, it can change the gene-level BFs and posteriors"
  type: boolean?
  inputBinding:
    prefix: --gene-snp
- id: in_best_snp
  doc: "the best SNP(s) per gene\n0: report all SNPs (default)\n1: report only the\
    \ single best SNP (pick one if tie)\n2: report the best SNP(s) listed in decreasing\
    \ order of their probability of being the eQTL (conditional on the gene containing\
    \ an eQTL), such that the sum of these probabilities exceeds 0.95"
  type: double?
  inputBinding:
    prefix: --bestsnp
- id: in_best_dim
  doc: the best config/type per SNP (and its posterior)
  type: string?
  inputBinding:
    prefix: --bestdim
- id: in_all_dim
  doc: "report also BF and/or posterior for all dimensions (configs or types)\ncaution,\
    \ the number of configurations can be big"
  type: boolean?
  inputBinding:
    prefix: --alldim
- id: in_out
  doc: "name of the output file (gzipped)\nif --cwts is not provided, the output file\
    \ will be used as input for 'eqtlbma_hm'"
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_thread
  doc: number of threads (default=1)
  type: boolean?
  inputBinding:
    prefix: --thread
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- eqtlbma_avg_bfs
