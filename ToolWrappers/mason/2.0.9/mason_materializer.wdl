version 1.0

task MasonMaterializer {
  input {
    Boolean? version_check
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    Int? seed
    Int? meth_seed
    File? out
    File? out_breakpoints
    Int? haplotype_name_sep
    File? meth_fast_a_in
    File? meth_fast_a_out
    File? input_reference
    File? input_vcf
    Boolean? methylation_levels
    Float? meth_cg_mu
    Float? meth_cg_sigma
    Float? meth_chg_mu
    Float? meth_chg_sigma
    Float? meth_chh_mu
    Float? meth_chh_sigma
  }
  command <<<
    mason_materializer \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very_verbose) then "--very-verbose" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(meth_seed) then ("--meth-seed " +  '"' + meth_seed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_breakpoints) then ("--out-breakpoints " +  '"' + out_breakpoints + '"') else ""} \
      ~{if defined(haplotype_name_sep) then ("--haplotype-name-sep " +  '"' + haplotype_name_sep + '"') else ""} \
      ~{if defined(meth_fast_a_in) then ("--meth-fasta-in " +  '"' + meth_fast_a_in + '"') else ""} \
      ~{if defined(meth_fast_a_out) then ("--meth-fasta-out " +  '"' + meth_fast_a_out + '"') else ""} \
      ~{if defined(input_reference) then ("--input-reference " +  '"' + input_reference + '"') else ""} \
      ~{if defined(input_vcf) then ("--input-vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if (methylation_levels) then "--methylation-levels" else ""} \
      ~{if defined(meth_cg_mu) then ("--meth-cg-mu " +  '"' + meth_cg_mu + '"') else ""} \
      ~{if defined(meth_cg_sigma) then ("--meth-cg-sigma " +  '"' + meth_cg_sigma + '"') else ""} \
      ~{if defined(meth_chg_mu) then ("--meth-chg-mu " +  '"' + meth_chg_mu + '"') else ""} \
      ~{if defined(meth_chg_sigma) then ("--meth-chg-sigma " +  '"' + meth_chg_sigma + '"') else ""} \
      ~{if defined(meth_chh_mu) then ("--meth-chh-mu " +  '"' + meth_chh_mu + '"') else ""} \
      ~{if defined(meth_chh_sigma) then ("--meth-chh-sigma " +  '"' + meth_chh_sigma + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    quiet: "Low verbosity."
    verbose: "Higher verbosity."
    very_verbose: "Highest verbosity."
    seed: "Seed for random number generation. Default: 0."
    meth_seed: "Seed for methylation simulation random number generation. Default:\\n0."
    out: "Output of materialized contigs. Valid filetypes are: .sam[.*],\\n.raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],\\n.fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any of the\\nfollowing extensions: gz and bgzf for transparent (de)compression."
    out_breakpoints: "TSV file to write breakpoints in variants to. Valid filetypes are:\\n.txt and .tsv."
    haplotype_name_sep: "String separating contig name from haplotype number. Default: /."
    meth_fast_a_in: "FASTA file with methylation levels of the input file. Valid\\nfiletypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*],\\n.fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*],\\n.embl[.*], and .bam, where * is any of the following extensions: gz\\nand bgzf for transparent (de)compression."
    meth_fast_a_out: "FASTA file with methylation levels of the output file. Valid\\nfiletypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*],\\n.ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where\\n* is any of the following extensions: gz and bgzf for transparent\\n(de)compression."
    input_reference: "Path to FASTA file to read the reference from. Valid filetypes are:\\n.sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*],\\n.fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam,\\nwhere * is any of the following extensions: gz and bgzf for\\ntransparent (de)compression."
    input_vcf: "Path to the VCF file with variants to apply. Valid filetype is:\\n.vcf[.*], where * is any of the following extensions: gz and bgzf\\nfor transparent (de)compression."
    methylation_levels: "Enable methylation level simulation."
    meth_cg_mu: "Median of beta distribution for methylation level of CpG loci. In\\nrange [0..1]. Default: 0.6."
    meth_cg_sigma: "Standard deviation of beta distribution for methylation level of CpG\\nloci. In range [0..1]. Default: 0.03."
    meth_chg_mu: "Median of beta distribution for methylation level of CHG loci. In\\nrange [0..1]. Default: 0.08."
    meth_chg_sigma: "Standard deviation of beta distribution for methylation level of CHG\\nloci. In range [0..1]. Default: 0.008."
    meth_chh_mu: "Median of beta distribution for methylation level of CHH loci. In\\nrange [0..1]. Default: 0.05."
    meth_chh_sigma: "Standard deviation of beta distribution for methylation level of CHH\\nloci. In range [0..1]. Default: 0.005."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_breakpoints = "${in_out_breakpoints}"
    File out_meth_fast_a_out = "${in_meth_fast_a_out}"
  }
}