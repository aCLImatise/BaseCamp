class: CommandLineTool
id: eqtlbma_bf_parallel.bash.cwl
inputs:
- id: in_verbose
  doc: level (0/default=1/2/3)
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_p_two_b
  doc: path to the binary 'eqtlbma_bf'
  type: boolean?
  inputBinding:
    prefix: --p2b
- id: in_gened
  doc: "directory with lists of features to analyze (BED files)\nfile names have to\
    \ be like '<anything>_<batchId>.<anything>'"
  type: boolean?
  inputBinding:
    prefix: --geneD
- id: in_snp_d
  doc: "directory with lists of SNPs to analyze (optional)\nfile names have to be\
    \ like '<anything>_<batchId>.<anything>'\neach SNP file should correspond to a\
    \ feature file, in the same order"
  type: boolean?
  inputBinding:
    prefix: --snpD
- id: in_in_ssd
  doc: "directory with lists of files with absolute paths to files with summary statistics\n\
    file names have to be like '<anything>_<batchId>.<abything>'\nif --inssD is given,\
    \ neither --geneD nor --snpD are used (nor --geno, --scoord, --exp, etc)"
  type: boolean?
  inputBinding:
    prefix: --inssD
- id: in_seed_f
  doc: "file with seeds (as many as files in --geneD)\noptional, default=list_seeds.txt.gz\
    \ (should be gzipped)"
  type: boolean?
  inputBinding:
    prefix: --seedF
- id: in_task
  doc: task identifier (not for SGE, for SLURM only)
  type: boolean?
  inputBinding:
    prefix: --task
- id: in_geno
  doc: "file with absolute paths to genotype files\ndefault=list_genotypes.txt"
  type: boolean?
  inputBinding:
    prefix: --geno
- id: in_s_coord
  doc: file with the SNP coordinates
  type: boolean?
  inputBinding:
    prefix: --scoord
- id: in_exp
  doc: "file with absolute paths to expression level files\ndefault=list_expressions.txt"
  type: boolean?
  inputBinding:
    prefix: --exp
- id: in_anchor
  doc: "feature boundary(ies) for the cis region\ndefault=TSS"
  type: boolean?
  inputBinding:
    prefix: --anchor
- id: in_cis
  doc: "length of half of the cis region (in bp)\ndefault=100000"
  type: boolean?
  inputBinding:
    prefix: --cis
- id: in_out
  doc: "prefix for the output files\ndefault=out_eqtlbma"
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_lik
  doc: "likelihood to use (normal/poisson/quasipoisson)\ndefault=normal"
  type: boolean?
  inputBinding:
    prefix: --lik
- id: in_analys
  doc: "analysis to perform (sep/join)\ndefault=sep"
  type: boolean?
  inputBinding:
    prefix: --analys
- id: in_out_ss
  doc: write the output file with all summary statistics
  type: File?
  inputBinding:
    prefix: --outss
- id: in_out_w
  doc: write the output file with the ABFs averaged over the grid
  type: File?
  inputBinding:
    prefix: --outw
- id: in_q_norm
  doc: quantile-normalize the expression levels to a N(0,1)
  type: boolean?
  inputBinding:
    prefix: --qnorm
- id: in_co_var
  doc: file with absolute paths to covariate files
  type: boolean?
  inputBinding:
    prefix: --covar
- id: in_grid_l
  doc: "file with a 'large' grid for prior variances\ndefault=grid_phi2_oma2_general.txt.gz"
  type: boolean?
  inputBinding:
    prefix: --gridL
- id: in_grids
  doc: "file with a 'small' grid for prior variances\ndefault=grid_phi2_oma2_with-configs.txt.gz"
  type: boolean?
  inputBinding:
    prefix: --gridS
- id: in_bfs
  doc: "which Bayes Factors to compute for the joint analysis\ndefault=gen"
  type: boolean?
  inputBinding:
    prefix: --bfs
- id: in_error
  doc: "model for the errors (uvlr/mvlr/hybrid)\ndefault=uvlr"
  type: boolean?
  inputBinding:
    prefix: --error
- id: in_fit_err
  doc: "param used when estimating the variance of the errors\ndefault=0.5"
  type: boolean?
  inputBinding:
    prefix: --fiterr
- id: in_n_perm
  doc: "number of permutations\ndefault=0"
  type: boolean?
  inputBinding:
    prefix: --nperm
- id: in_trick
  doc: "apply trick to speed-up permutations\ndefault=2"
  type: boolean?
  inputBinding:
    prefix: --trick
- id: in_tri_cut
  doc: "cutoff for the trick\ndefault=10"
  type: boolean?
  inputBinding:
    prefix: --tricut
- id: in_perm_sep
  doc: "permutation procedure for the separate analysis\ndefault=0"
  type: long?
  inputBinding:
    prefix: --permsep
- id: in_pbf
  doc: "which BF to use as the test statistic for the joint-analysis permutations\n\
    default=none"
  type: boolean?
  inputBinding:
    prefix: --pbf
- id: in_max_bf
  doc: use the maximum ABF over SNPs as test statistic for permutations
  type: boolean?
  inputBinding:
    prefix: --maxbf
- id: in_thread
  doc: "number of threads for the permutations\ndefault=1"
  type: boolean?
  inputBinding:
    prefix: --thread
- id: in_sb_grp
  doc: identifier of the subgroup to analyze
  type: boolean?
  inputBinding:
    prefix: --sbgrp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_ss
  doc: write the output file with all summary statistics
  type: File?
  outputBinding:
    glob: $(inputs.in_out_ss)
- id: out_out_w
  doc: write the output file with the ABFs averaged over the grid
  type: File?
  outputBinding:
    glob: $(inputs.in_out_w)
hints: []
cwlVersion: v1.1
baseCommand:
- eqtlbma_bf_parallel.bash
