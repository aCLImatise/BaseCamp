version 1.0

task MasonVariator {
  input {
    Boolean? version_check
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    Int? seed
    String? in_reference
    String? in_variant_tsv
    String? out_vcf
    String? out_fast_a
    String? out_breakpoints
    String? haplotype_name_sep
    Boolean? no_gen_var_ids
    Int? num_haplotypes
    String? haplotype_sep
    String? snp_rate
    String? small_in_del_rate
    Int? min_small_in_del_size
    Int? max_small_in_del_size
    String? sv_in_del_rate
    String? sv_inversion_rate
    String? sv_translocation_rate
    String? sv_duplication_rate
    Int? min_sv_size
    Int? max_sv_size
    Boolean? methylation_levels
    String? meth_cg_mu
    String? meth_cg_sigma
    String? meth_chg_mu
    String? meth_chg_sigma
    String? meth_chh_mu
    String? meth_chh_sigma
    String? meth_fast_a_in
    String? meth_fast_a_out
    String ins
    String del
    String in_v
    String ctr
    String dup
  }
  command <<<
    mason_variator \
      ~{ins} \
      ~{del} \
      ~{in_v} \
      ~{ctr} \
      ~{dup} \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(in_reference) then ("--in-reference " +  '"' + in_reference + '"') else ""} \
      ~{if defined(in_variant_tsv) then ("--in-variant-tsv " +  '"' + in_variant_tsv + '"') else ""} \
      ~{if defined(out_vcf) then ("--out-vcf " +  '"' + out_vcf + '"') else ""} \
      ~{if defined(out_fast_a) then ("--out-fasta " +  '"' + out_fast_a + '"') else ""} \
      ~{if defined(out_breakpoints) then ("--out-breakpoints " +  '"' + out_breakpoints + '"') else ""} \
      ~{if defined(haplotype_name_sep) then ("--haplotype-name-sep " +  '"' + haplotype_name_sep + '"') else ""} \
      ~{true="--no-gen-var-ids" false="" no_gen_var_ids} \
      ~{if defined(num_haplotypes) then ("--num-haplotypes " +  '"' + num_haplotypes + '"') else ""} \
      ~{if defined(haplotype_sep) then ("--haplotype-sep " +  '"' + haplotype_sep + '"') else ""} \
      ~{if defined(snp_rate) then ("--snp-rate " +  '"' + snp_rate + '"') else ""} \
      ~{if defined(small_in_del_rate) then ("--small-indel-rate " +  '"' + small_in_del_rate + '"') else ""} \
      ~{if defined(min_small_in_del_size) then ("--min-small-indel-size " +  '"' + min_small_in_del_size + '"') else ""} \
      ~{if defined(max_small_in_del_size) then ("--max-small-indel-size " +  '"' + max_small_in_del_size + '"') else ""} \
      ~{if defined(sv_in_del_rate) then ("--sv-indel-rate " +  '"' + sv_in_del_rate + '"') else ""} \
      ~{if defined(sv_inversion_rate) then ("--sv-inversion-rate " +  '"' + sv_inversion_rate + '"') else ""} \
      ~{if defined(sv_translocation_rate) then ("--sv-translocation-rate " +  '"' + sv_translocation_rate + '"') else ""} \
      ~{if defined(sv_duplication_rate) then ("--sv-duplication-rate " +  '"' + sv_duplication_rate + '"') else ""} \
      ~{if defined(min_sv_size) then ("--min-sv-size " +  '"' + min_sv_size + '"') else ""} \
      ~{if defined(max_sv_size) then ("--max-sv-size " +  '"' + max_sv_size + '"') else ""} \
      ~{true="--methylation-levels" false="" methylation_levels} \
      ~{if defined(meth_cg_mu) then ("--meth-cg-mu " +  '"' + meth_cg_mu + '"') else ""} \
      ~{if defined(meth_cg_sigma) then ("--meth-cg-sigma " +  '"' + meth_cg_sigma + '"') else ""} \
      ~{if defined(meth_chg_mu) then ("--meth-chg-mu " +  '"' + meth_chg_mu + '"') else ""} \
      ~{if defined(meth_chg_sigma) then ("--meth-chg-sigma " +  '"' + meth_chg_sigma + '"') else ""} \
      ~{if defined(meth_chh_mu) then ("--meth-chh-mu " +  '"' + meth_chh_mu + '"') else ""} \
      ~{if defined(meth_chh_sigma) then ("--meth-chh-sigma " +  '"' + meth_chh_sigma + '"') else ""} \
      ~{if defined(meth_fast_a_in) then ("--meth-fasta-in " +  '"' + meth_fast_a_in + '"') else ""} \
      ~{if defined(meth_fast_a_out) then ("--meth-fasta-out " +  '"' + meth_fast_a_out + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    quiet: "Set verbosity to a minimum."
    verbose: "Enable verbose output."
    very_verbose: "Enable very verbose output."
    seed: "The seed to use for the random number generator. Default: 0."
    in_reference: "FASTA file with reference. Valid filetypes are: .fasta and .fa."
    in_variant_tsv: "TSV file with variants to simulate. See Section on the Variant TSV File below. Valid filetypes are: .txt and .tsv."
    out_vcf: "VCF file to write simulated variations to. Valid filetype is: .vcf."
    out_fast_a: "FASTA file to write simulated haplotypes to. Valid filetypes are: .fasta and .fa."
    out_breakpoints: "TSV file to write breakpoints in variants to. Valid filetypes are: .txt and .tsv."
    haplotype_name_sep: "Haplotype name separator in output FASTA. Default: /."
    no_gen_var_ids: "Do not generate variant ids."
    num_haplotypes: "The number of haplotypes to simulate. In range [1..inf]. Default: 1."
    haplotype_sep: "The separator between the chromosome and the haplotype name in the output FASTA file. Default: /."
    snp_rate: "Per-base SNP rate. In range [0.0..1.0]. Default: 0.0001."
    small_in_del_rate: "Small indel rate. In range [0.0..1.0]. Default: 0.000001."
    min_small_in_del_size: "Minimal small indel size to simulate. In range [0..inf]. Default: 1."
    max_small_in_del_size: "Maximal small indel size to simulate. In range [0..inf]. Default: 6."
    sv_in_del_rate: "Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001."
    sv_inversion_rate: "Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001."
    sv_translocation_rate: "Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001."
    sv_duplication_rate: "Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001."
    min_sv_size: "Minimal SV size to simulate. In range [0..inf]. Default: 50."
    max_sv_size: "Maximal SV size to simulate. In range [0..inf]. Default: 1000."
    methylation_levels: "Enable methylation level simulation."
    meth_cg_mu: "Median of beta distribution for methylation level of CpG loci. In range [0..1]. Default: 0.6."
    meth_cg_sigma: "Standard deviation of beta distribution for methylation level of CpG loci. In range [0..1]. Default: 0.03."
    meth_chg_mu: "Median of beta distribution for methylation level of CHG loci. In range [0..1]. Default: 0.08."
    meth_chg_sigma: "Standard deviation of beta distribution for methylation level of CHG loci. In range [0..1]. Default: 0.008."
    meth_chh_mu: "Median of beta distribution for methylation level of CHH loci. In range [0..1]. Default: 0.05."
    meth_chh_sigma: "Standard deviation of beta distribution for methylation level of CHH loci. In range [0..1]. Default: 0.005."
    meth_fast_a_in: "Path to load original methylation levels from. Methylation levels are simulated if omitted. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    meth_fast_a_out: "Path to write methylation levels to as FASTA. Only written if -of/--out-fasta is given. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    ins: "An insertion."
    del: "A deletion."
    in_v: "An inversion."
    ctr: "An intra-chromosomal translocation."
    dup: "A duplication"
  }
}