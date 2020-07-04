version 1.0

task VcfConsensus {
  input {
    Int? haplotype
    Boolean? iupac_codes
    String? sample
    String cat
    String ref_dot_fa
  }
  command <<<
    vcf-consensus \
      ~{cat} \
      ~{ref_dot_fa} \
      ~{if defined(haplotype) then ("--haplotype " +  '"' + haplotype + '"') else ""} \
      ~{true="--iupac-codes" false="" iupac_codes} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""}
  >>>
  parameter_meta {
    haplotype: "Apply only variants for the given haplotype (1,2)"
    iupac_codes: "Apply variants in the form of IUPAC ambiguity codes"
    sample: "If not given, all variants are applied"
    cat: ""
    ref_dot_fa: ""
  }
}