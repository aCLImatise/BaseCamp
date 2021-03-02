version 1.0

task EqtlbmaBfParallelbash {
  input {
    Int? verbose
    Boolean? p_two_b
    Boolean? gened
    Boolean? snp_d
    Boolean? in_ssd
    Boolean? seed_f
    Boolean? task_identifier_only
    Boolean? geno
    Boolean? s_coord
    Boolean? exp
    Boolean? anchor
    Boolean? cis
    Boolean? out
    Boolean? lik
    Boolean? analys
    File? out_ss
    File? out_w
    Boolean? q_norm
    Boolean? co_var
    Boolean? grid_l
    Boolean? grids
    Boolean? bfs
    Boolean? error
    Boolean? fit_err
    Boolean? n_perm
    Boolean? trick
    Boolean? tri_cut
    Int? perm_sep
    Boolean? pbf
    Boolean? max_bf
    Boolean? thread
    Boolean? sb_grp
  }
  command <<<
    eqtlbma_bf_parallel_bash \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (p_two_b) then "--p2b" else ""} \
      ~{if (gened) then "--geneD" else ""} \
      ~{if (snp_d) then "--snpD" else ""} \
      ~{if (in_ssd) then "--inssD" else ""} \
      ~{if (seed_f) then "--seedF" else ""} \
      ~{if (task_identifier_only) then "--task" else ""} \
      ~{if (geno) then "--geno" else ""} \
      ~{if (s_coord) then "--scoord" else ""} \
      ~{if (exp) then "--exp" else ""} \
      ~{if (anchor) then "--anchor" else ""} \
      ~{if (cis) then "--cis" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (lik) then "--lik" else ""} \
      ~{if (analys) then "--analys" else ""} \
      ~{if (out_ss) then "--outss" else ""} \
      ~{if (out_w) then "--outw" else ""} \
      ~{if (q_norm) then "--qnorm" else ""} \
      ~{if (co_var) then "--covar" else ""} \
      ~{if (grid_l) then "--gridL" else ""} \
      ~{if (grids) then "--gridS" else ""} \
      ~{if (bfs) then "--bfs" else ""} \
      ~{if (error) then "--error" else ""} \
      ~{if (fit_err) then "--fiterr" else ""} \
      ~{if (n_perm) then "--nperm" else ""} \
      ~{if (trick) then "--trick" else ""} \
      ~{if (tri_cut) then "--tricut" else ""} \
      ~{if defined(perm_sep) then ("--permsep " +  '"' + perm_sep + '"') else ""} \
      ~{if (pbf) then "--pbf" else ""} \
      ~{if (max_bf) then "--maxbf" else ""} \
      ~{if (thread) then "--thread" else ""} \
      ~{if (sb_grp) then "--sbgrp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "level (0/default=1/2/3)"
    p_two_b: "path to the binary 'eqtlbma_bf'"
    gened: "directory with lists of features to analyze (BED files)\\nfile names have to be like '<anything>_<batchId>.<anything>'"
    snp_d: "directory with lists of SNPs to analyze (optional)\\nfile names have to be like '<anything>_<batchId>.<anything>'\\neach SNP file should correspond to a feature file, in the same order"
    in_ssd: "directory with lists of files with absolute paths to files with summary statistics\\nfile names have to be like '<anything>_<batchId>.<abything>'\\nif --inssD is given, neither --geneD nor --snpD are used (nor --geno, --scoord, --exp, etc)"
    seed_f: "file with seeds (as many as files in --geneD)\\noptional, default=list_seeds.txt.gz (should be gzipped)"
    task_identifier_only: "task identifier (not for SGE, for SLURM only)"
    geno: "file with absolute paths to genotype files\\ndefault=list_genotypes.txt"
    s_coord: "file with the SNP coordinates"
    exp: "file with absolute paths to expression level files\\ndefault=list_expressions.txt"
    anchor: "feature boundary(ies) for the cis region\\ndefault=TSS"
    cis: "length of half of the cis region (in bp)\\ndefault=100000"
    out: "prefix for the output files\\ndefault=out_eqtlbma"
    lik: "likelihood to use (normal/poisson/quasipoisson)\\ndefault=normal"
    analys: "analysis to perform (sep/join)\\ndefault=sep"
    out_ss: "write the output file with all summary statistics"
    out_w: "write the output file with the ABFs averaged over the grid"
    q_norm: "quantile-normalize the expression levels to a N(0,1)"
    co_var: "file with absolute paths to covariate files"
    grid_l: "file with a 'large' grid for prior variances\\ndefault=grid_phi2_oma2_general.txt.gz"
    grids: "file with a 'small' grid for prior variances\\ndefault=grid_phi2_oma2_with-configs.txt.gz"
    bfs: "which Bayes Factors to compute for the joint analysis\\ndefault=gen"
    error: "model for the errors (uvlr/mvlr/hybrid)\\ndefault=uvlr"
    fit_err: "param used when estimating the variance of the errors\\ndefault=0.5"
    n_perm: "number of permutations\\ndefault=0"
    trick: "apply trick to speed-up permutations\\ndefault=2"
    tri_cut: "cutoff for the trick\\ndefault=10"
    perm_sep: "permutation procedure for the separate analysis\\ndefault=0"
    pbf: "which BF to use as the test statistic for the joint-analysis permutations\\ndefault=none"
    max_bf: "use the maximum ABF over SNPs as test statistic for permutations"
    thread: "number of threads for the permutations\\ndefault=1"
    sb_grp: "identifier of the subgroup to analyze"
  }
  output {
    File out_stdout = stdout()
    File out_out_ss = "${in_out_ss}"
    File out_out_w = "${in_out_w}"
  }
}