class: CommandLineTool
id: eqtlbma_bf.cwl
inputs:
- id: in_verbose
  doc: level (0/default=1/2/3)
  type: long
  inputBinding:
    prefix: --verbose
- id: in_geno
  doc: "file with absolute paths to genotype files\ntwo columns: subgroup identifier<space/tab>path\
    \ to file\nadd '#' at the beginning of a line to comment it\nsubgroup file: can\
    \ be in three formats (VCF/IMPUTE/custom)\nVCF: see specifications on 1kG website\n\
    IMPUTE: row 1 is a header chr<del>name<del>coord<del>a1<del>a2\nfollowed by >sample1_a1a1<del>sample1_a1a2<del>sample1_a2a2<del>...\n\
    custom: genotypes as allele dose, same as for MatrixEQTL\nand missing data can\
    \ be NA or -1 (as used by vcftools --012)"
  type: boolean
  inputBinding:
    prefix: --geno
- id: in_s_coord
  doc: "file with the SNP coordinates\ncompulsory if custom genotype format; forbidden\
    \ otherwise\nshould be in the BED format (delimiter: tab)\nSNPs in the genotype\
    \ files without coordinate are skipped (see also --snp)\nif a tabix-indexed file\
    \ is also present, it will be used"
  type: boolean
  inputBinding:
    prefix: --scoord
- id: in_exp
  doc: "file with absolute paths to expression level files\ntwo columns: subgroup\
    \ identifier<space/tab>path to file\nadd '#' at the beginning of a line to comment\
    \ it\nsubgroup file: custom format, same as for MatrixEQTL\nrow 1 for sample names,\
    \ column 1 for gene names\nsubgroups can have different genes\nall genes should\
    \ be in the --gcoord file"
  type: boolean
  inputBinding:
    prefix: --exp
- id: in_g_coord
  doc: "file with the gene coordinates\nshould be in the BED format (delimiter: tab)\n\
    genes in the exp level files without coordinates are skipped"
  type: boolean
  inputBinding:
    prefix: --gcoord
- id: in_anchor
  doc: "gene boundary(ies) for the cis region\ndefault=TSS (assumed to be start in\
    \ BED file)"
  type: boolean
  inputBinding:
    prefix: --anchor
- id: in_cis
  doc: "length of half of the cis region (radius, in bp)\napart from the anchor(s),\
    \ default=100000"
  type: boolean
  inputBinding:
    prefix: --cis
- id: in_in_ss
  doc: "file with absolute paths to files with summary statistics\ntwo columns: subgroup\
    \ identifier<space/tab>path to file\nadd '#' at the beginning of a line to comment\
    \ it\nsstats file: custom format, similar to the one from --outss (see below)\n\
    header should have gene, snp, n, sigmahat, betahat.geno and sebetahat.geno\norder\
    \ doesn't matter"
  type: boolean
  inputBinding:
    prefix: --inss
- id: in_out
  doc: "prefix for the output files\nall output files are gzipped and have a header\
    \ line"
  type: boolean
  inputBinding:
    prefix: --out
- id: in_lik
  doc: "likelihood to use\n'normal' (default)\n'poisson' or 'quasipoisson'"
  type: boolean
  inputBinding:
    prefix: --lik
- id: in_analys
  doc: "analysis to perform\n'sep': separate analysis of each subgroup\n'join': joint\
    \ analysis of all subgroups"
  type: boolean
  inputBinding:
    prefix: --analys
- id: in_out_ss
  doc: write the output file with all summary statistics
  type: File
  inputBinding:
    prefix: --outss
- id: in_out_w
  doc: "write the output file with the ABFs averaged over the grid\ngrid weights are\
    \ uniformly equal"
  type: File
  inputBinding:
    prefix: --outw
- id: in_q_norm
  doc: quantile-normalize the exp levels to a N(0,1)
  type: boolean
  inputBinding:
    prefix: --qnorm
- id: in_maf
  doc: minimum minor allele frequency (default=0.0)
  type: boolean
  inputBinding:
    prefix: --maf
- id: in_co_var
  doc: "file with absolute paths to covariate files\ntwo columns: subgroup identifier<space/tab>path\
    \ to file\ncan be a single line (single subgroup)\nadd '#' at the beginning of\
    \ a line to comment it\nsubgroup file: row 1 is a header sample<space/tab>covariate1\
    \ ...\nall sample names should be in the respective genotype and exp level files\n\
    the covariates should be numbers, no missing value is allowed\nsubgroups can have\
    \ different covariates\nthe order of rows is not important"
  type: boolean
  inputBinding:
    prefix: --covar
- id: in_grid_l
  doc: "file with a 'large' grid for prior variances in standardized effect sizes\n\
    first column is phi^2 and second column is omega^2, no header\nthis grid is used\
    \ with model 1 ('general alternative') trying to capture\nall sorts of heterogeneity\n\
    required with --analys join"
  type: boolean
  inputBinding:
    prefix: --gridL
- id: in_grids
  doc: "file with a 'small' grid of values for phi^2 and omega^2\nsame format as --gridL\n\
    required with --analyis join if --bfs is 'sin' or 'all'"
  type: boolean
  inputBinding:
    prefix: --gridS
- id: in_bfs
  doc: "which Bayes Factors to compute for the joint analysis\nonly the Laplace-approximated\
    \ BF from Wen and Stephens (AoAS 2013) is implemented\nif --outw, each BF for\
    \ a given configuration is the average of the BFs over one of the grids, with\
    \ equal weights\n'gen' (default): general way to capture any level of heterogeneity\n\
    correspond to the consistent configuration with the large grid\nfixed-effect and\
    \ maximum-heterogeneity BFs are also calculated\n'sin': compute also the BF for\
    \ each singleton (subgroup-specific configuration)\nthey use the small grid (BF_BMAlite\
    \ is also reported)\n'all': compute also the BFs for all configurations (costly\
    \ if many subgroups)\nall BFs use the small grid (BF_BMA is also reported)"
  type: boolean
  inputBinding:
    prefix: --bfs
- id: in_error
  doc: "model for the errors (if --analys join)\n'uvlr': default, errors are not correlated\
    \ between subgroups (different individuals)\n'mvlr': errors can be correlated\
    \ between subgroups (same individuals)\n'hybrid': errors can be correlated between\
    \ pairs of subgroups (common individuals)"
  type: boolean
  inputBinding:
    prefix: --error
- id: in_fit_err
  doc: "param used when estimating the variance of the errors (if --analys join, only\
    \ with 'mvlr' or 'hybrid')\ndefault=0.5 but can be between 0 (null model) and\
    \ 1 (full model)"
  type: boolean
  inputBinding:
    prefix: --fiterr
- id: in_n_perm
  doc: "number of permutations\ndefault=0, otherwise 10000 is recommended"
  type: boolean
  inputBinding:
    prefix: --nperm
- id: in_seed
  doc: "seed for the two random number generators\none for the permutations, another\
    \ for the trick\nby default, both are initialized via microseconds from epoch\n\
    the RNGs are re-seeded before each subgroup and before the joint analysis\nthis,\
    \ along with --trick 2, allows for proper comparison of separate and joint analyzes"
  type: boolean
  inputBinding:
    prefix: --seed
- id: in_trick
  doc: "apply trick to speed-up permutations\nstop after the tenth permutation for\
    \ which the test statistic\nis better than or equal to the true value, and sample\
    \ from\na uniform between 11/(nbPermsSoFar+2) and 11/(nbPermsSoFar+1)\nif '1',\
    \ the permutations really stops\nif '2', all permutations are done but the test\
    \ statistics are not computed\nallows to compare different test statistics on\
    \ the same permutations"
  type: boolean
  inputBinding:
    prefix: --trick
- id: in_tri_cut
  doc: "cutoff for the trick (default=10)\nstop permutations once the nb of permutations\
    \ for which permTestStat is more extreme\nthan trueTestStat equals this cutoff"
  type: boolean
  inputBinding:
    prefix: --tricut
- id: in_perm_sep
  doc: "permutation procedure for the separate analysis\n0 (default): no permutations\
    \ are done for the separate analysis\n1: use the minimum P-value over SNPs and\
    \ subgroups as a test statistic (keeps correlations)\n2: use the minimum P-value\
    \ over SNPs but in each subgroup separately (breaks correlations)"
  type: long
  inputBinding:
    prefix: --permsep
- id: in_pbf
  doc: "which BF to use as the test statistic for the joint-analysis permutations\n\
    'none' (default): no permutations are done for the joint analysis\n'gen': general\
    \ BF (see --bfs above)\n'gen-sin': 0.5 BFgen + 0.5 BFsin (also called BF_BMAlite)\n\
    'all': average over all configurations (also called BF_BMA)"
  type: boolean
  inputBinding:
    prefix: --pbf
- id: in_max_bf
  doc: "use the maximum ABF over SNPs as test statistic for permutations\notherwise\
    \ the average ABF over SNPs is used (more Bayesian)"
  type: boolean
  inputBinding:
    prefix: --maxbf
- id: in_thread
  doc: number of threads (default=1, parallelize over SNPs)
  type: boolean
  inputBinding:
    prefix: --thread
- id: in_snp
  doc: "file with a list of SNPs to analyze\none SNP name per line, useful when launched\
    \ in parallel\nprogram exits if an empty file is given"
  type: boolean
  inputBinding:
    prefix: --snp
- id: in_sb_grp
  doc: "identifier of the subgroup to analyze\nuseful for quick analysis and debugging\n\
    can be 'sbgrp1+sbgrp3' for instance"
  type: boolean
  inputBinding:
    prefix: --sbgrp
- id: in_wrt_size
  doc: "of genes which results are written at once (default=10)\nto prevent excessive\
    \ memory usage\ntune it depending on the average number of cis SNPs per gene\n"
  type: long
  inputBinding:
    prefix: --wrtsize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_ss
  doc: write the output file with all summary statistics
  type: File
  outputBinding:
    glob: $(inputs.in_out_ss)
- id: out_out_w
  doc: "write the output file with the ABFs averaged over the grid\ngrid weights are\
    \ uniformly equal"
  type: File
  outputBinding:
    glob: $(inputs.in_out_w)
cwlVersion: v1.1
baseCommand:
- eqtlbma_bf
