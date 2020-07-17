version 1.0

task BgtAtomize {
  input {
    Boolean? bcf_output
    Boolean? vcf_input
    File? list_contig_names
    Boolean? use_m_multiallelic
    Boolean? use_multiallelic_genotype
    String in_dot_bcf
  }
  command <<<
    bgt atomize \
      ~{in_dot_bcf} \
      ~{true="-b" false="" bcf_output} \
      ~{true="-S" false="" vcf_input} \
      ~{if defined(list_contig_names) then ("-t " +  '"' + list_contig_names + '"') else ""} \
      ~{true="-M" false="" use_m_multiallelic} \
      ~{true="-0" false="" use_multiallelic_genotype}
  >>>
  parameter_meta {
    bcf_output: "BCF output"
    vcf_input: "VCF input"
    list_contig_names: "list of contig names and lengths (force -S)"
    use_m_multiallelic: "use <M> at a multi-allelic site (override -0)"
    use_multiallelic_genotype: "use 0 at a multi-allelic genotype"
    in_dot_bcf: ""
  }
}