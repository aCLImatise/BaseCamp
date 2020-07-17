version 1.0

task MasonMethylation {
  input {
    Boolean? version_check
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    Int? seed
    String? in
    String? out
    Boolean? methylation_levels
    String? meth_cg_mu
    String? meth_cg_sigma
    String? meth_chg_mu
    String? meth_chg_sigma
    String? meth_chh_mu
    String? meth_chh_sigma
  }
  command <<<
    mason_methylation \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--methylation-levels" false="" methylation_levels} \
      ~{if defined(meth_cg_mu) then ("--meth-cg-mu " +  '"' + meth_cg_mu + '"') else ""} \
      ~{if defined(meth_cg_sigma) then ("--meth-cg-sigma " +  '"' + meth_cg_sigma + '"') else ""} \
      ~{if defined(meth_chg_mu) then ("--meth-chg-mu " +  '"' + meth_chg_mu + '"') else ""} \
      ~{if defined(meth_chg_sigma) then ("--meth-chg-sigma " +  '"' + meth_chg_sigma + '"') else ""} \
      ~{if defined(meth_chh_mu) then ("--meth-chh-mu " +  '"' + meth_chh_mu + '"') else ""} \
      ~{if defined(meth_chh_sigma) then ("--meth-chh-sigma " +  '"' + meth_chh_sigma + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    quiet: "Low verbosity."
    verbose: "Higher verbosity."
    very_verbose: "Highest verbosity."
    seed: "Seed for RNG. Default: 0."
    in: "Input FASTA file with genome. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    out: "Input FASTA file with genome. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    methylation_levels: "Enable methylation level simulation."
    meth_cg_mu: "Median of beta distribution for methylation level of CpG loci. In range [0..1]. Default: 0.6."
    meth_cg_sigma: "Standard deviation of beta distribution for methylation level of CpG loci. In range [0..1]. Default: 0.03."
    meth_chg_mu: "Median of beta distribution for methylation level of CHG loci. In range [0..1]. Default: 0.08."
    meth_chg_sigma: "Standard deviation of beta distribution for methylation level of CHG loci. In range [0..1]. Default: 0.008."
    meth_chh_mu: "Median of beta distribution for methylation level of CHH loci. In range [0..1]. Default: 0.05."
    meth_chh_sigma: "Standard deviation of beta distribution for methylation level of CHH loci. In range [0..1]. Default: 0.005."
  }
}