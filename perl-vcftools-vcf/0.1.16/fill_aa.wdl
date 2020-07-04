version 1.0

task FillAa {
  input {
    String? ancestral_allele
    String? type
    String in_dot_vcf
    String out_dot_vcf
  }
  command <<<
    fill-aa \
      ~{in_dot_vcf} \
      ~{out_dot_vcf} \
      ~{if defined(ancestral_allele) then ("--ancestral-allele " +  '"' + ancestral_allele + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    ancestral_allele: "Prefix to ancestral allele chromosome files."
    type: "Variant types to process: all,indel,ref,snp. [all]"
    in_dot_vcf: ""
    out_dot_vcf: ""
  }
}