version 1.0

task MasonMaterializer {
  input {
    Boolean? version_check
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    Int? seed
    Int? meth_seed
    String? out
    String? out_breakpoints
    String? haplotype_name_sep
    String? meth_fast_a_in
    String? meth_fast_a_out
    String? input_reference
    String? input_vcf
    Boolean? methylation_levels
    String? meth_cg_mu
    String? meth_cg_sigma
    String? meth_chg_mu
    String? meth_chg_sigma
    String? meth_chh_mu
    String? meth_chh_sigma
  }
  command <<<
    mason_materializer \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(meth_seed) then ("--meth-seed " +  '"' + meth_seed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_breakpoints) then ("--out-breakpoints " +  '"' + out_breakpoints + '"') else ""} \
      ~{if defined(haplotype_name_sep) then ("--haplotype-name-sep " +  '"' + haplotype_name_sep + '"') else ""} \
      ~{if defined(meth_fast_a_in) then ("--meth-fasta-in " +  '"' + meth_fast_a_in + '"') else ""} \
      ~{if defined(meth_fast_a_out) then ("--meth-fasta-out " +  '"' + meth_fast_a_out + '"') else ""} \
      ~{if defined(input_reference) then ("--input-reference " +  '"' + input_reference + '"') else ""} \
      ~{if defined(input_vcf) then ("--input-vcf " +  '"' + input_vcf + '"') else ""} \
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
    seed: "Seed for random number generation. Default: 0."
    meth_seed: "Seed for methylation simulation random number generation. Default: 0."
    out: "Output of materialized contigs. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    out_breakpoints: "TSV file to write breakpoints in variants to. Valid filetypes are: .txt and .tsv."
    haplotype_name_sep: "String separating contig name from haplotype number. Default: /."
    meth_fast_a_in: "FASTA file with methylation levels of the input file. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    meth_fast_a_out: "FASTA file with methylation levels of the output file. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    input_reference: "Path to FASTA file to read the reference from. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    input_vcf: "Path to the VCF file with variants to apply. Valid filetype is: .vcf[.*], where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    methylation_levels: "Enable methylation level simulation."
    meth_cg_mu: "Median of beta distribution for methylation level of CpG loci. In range [0..1]. Default: 0.6."
    meth_cg_sigma: "Standard deviation of beta distribution for methylation level of CpG loci. In range [0..1]. Default: 0.03."
    meth_chg_mu: "Median of beta distribution for methylation level of CHG loci. In range [0..1]. Default: 0.08."
    meth_chg_sigma: "Standard deviation of beta distribution for methylation level of CHG loci. In range [0..1]. Default: 0.008."
    meth_chh_mu: "Median of beta distribution for methylation level of CHH loci. In range [0..1]. Default: 0.05."
    meth_chh_sigma: "Standard deviation of beta distribution for methylation level of CHH loci. In range [0..1]. Default: 0.005."
  }
}