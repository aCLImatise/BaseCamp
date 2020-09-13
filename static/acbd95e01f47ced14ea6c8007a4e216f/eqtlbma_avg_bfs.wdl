version 1.0

task EqtlbmaAvgBfs {
  input {
    Int? verbose
    Boolean? in
    Boolean? g_wts
    Boolean? gtk
    Boolean? model
    Int? n_sub_grp
    Boolean? dim
    Boolean? cwts
    Boolean? t_swts
    Boolean? save
    Boolean? pi_zero
    Boolean? post
    Boolean? gene
    Boolean? snp
    Boolean? gene_snp
    Float? best_snp
    String? best_dim
    Boolean? all_dim
    Boolean? out
    Boolean? thread
  }
  command <<<
    eqtlbma_avg_bfs \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (in) then "--in" else ""} \
      ~{if (g_wts) then "--gwts" else ""} \
      ~{if (gtk) then "--gtk" else ""} \
      ~{if (model) then "--model" else ""} \
      ~{if defined(n_sub_grp) then ("--nsubgrp " +  '"' + n_sub_grp + '"') else ""} \
      ~{if (dim) then "--dim" else ""} \
      ~{if (cwts) then "--cwts" else ""} \
      ~{if (t_swts) then "--tswts" else ""} \
      ~{if (save) then "--save" else ""} \
      ~{if (pi_zero) then "--pi0" else ""} \
      ~{if (post) then "--post" else ""} \
      ~{if (gene) then "--gene" else ""} \
      ~{if (snp) then "--snp" else ""} \
      ~{if (gene_snp) then "--gene-snp" else ""} \
      ~{if defined(best_snp) then ("--bestsnp " +  '"' + best_snp + '"') else ""} \
      ~{if defined(best_dim) then ("--bestdim " +  '"' + best_dim + '"') else ""} \
      ~{if (all_dim) then "--alldim" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (thread) then "--thread" else ""}
  >>>
  parameter_meta {
    verbose: "level (0/default=1/2/3)"
    in: "pattern to glob '_l10abfs_raw' files from 'eqtlbma_bf'"
    g_wts: "file with grid weights (one per line, only the value)"
    gtk: "ind-ex/icies of grid weights to keep (all by default)\\ne.g. '1+3+5+7+9' to keep only those with no heterogeneity"
    model: "which model (default=configs/types)"
    n_sub_grp: "of subgroups"
    dim: "dimension of the model (nb of active configs or types)"
    cwts: "file with configuration weights (one per line, name<sep>value)\\nonly a subset of the configs can be given, in agreement with --nsubgrp and --dim"
    t_swts: "file with type and subgroup weights (one per line, name<sep>value)"
    save: "precise what to save (bf/post/bf+post)\\n'post' requires also options --pi0 and --post"
    pi_zero: "proba for a gene to have no eQTL in any subgroup\\nif not provided, BFs will be saved instead of posterior probability"
    post: "save various kinds of posterior probabilities (e.g. 'a+b')\\na: the gene has at least one eQTL\\nb: the SNP is 'the' eQTL for the gene, in at least one subgroup, given that the gene has exactly one eQTL,\\nassuming all cis SNPs are equally likely and a single eQTL per gene\\nc: the SNP is 'an' eQTL for the gene, in at least one subgroup, given that the gene contains at least one eQTL\\nand that SNPs are independent\\nd: the SNP is an eQTL in subgroup s, given that it is 'the' eQTL for the gene, the configs/types being marginalized"
    gene: "file with subset of gene(s) to keep (one per line)"
    snp: "file with subset of snp(s) to keep (one per line)\\ncaution, it can change the gene-level BFs and posteriors"
    gene_snp: "file with subset of gene-snp pai(s) to keep (gene<tab>snp, one per line)\\ncaution, it can change the gene-level BFs and posteriors"
    best_snp: "the best SNP(s) per gene\\n0: report all SNPs (default)\\n1: report only the single best SNP (pick one if tie)\\n2: report the best SNP(s) listed in decreasing order of their probability of being the eQTL (conditional on the gene containing an eQTL), such that the sum of these probabilities exceeds 0.95"
    best_dim: "the best config/type per SNP (and its posterior)"
    all_dim: "report also BF and/or posterior for all dimensions (configs or types)\\ncaution, the number of configurations can be big"
    out: "name of the output file (gzipped)\\nif --cwts is not provided, the output file will be used as input for 'eqtlbma_hm'"
    thread: "number of threads (default=1)"
  }
  output {
    File out_stdout = stdout()
  }
}