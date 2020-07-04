version 1.0

task Vcfnormalizesvs {
  input {
    Boolean? _reference_reffa
    Boolean? _insertions_insfa
    String var_dot_vcf
  }
  command <<<
    vcfnormalizesvs \
      ~{var_dot_vcf} \
      ~{true="-r" false="" _reference_reffa} \
      ~{true="-i" false="" _insertions_insfa}
  >>>
  parameter_meta {
    _reference_reffa: "/ --reference <ref.fa>   FASTA-format reference genome from which to pull SV sequences."
    _insertions_insfa: "/ --insertions <ins.fa>   FASTA-format insertion sequences, with IDs matching the ALT allele tags in the vcf"
    var_dot_vcf: ""
  }
}