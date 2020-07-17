version 1.0

task HgvsToVcf {
  input {
    Boolean? no_left_shift
    String db
    String input_dot_hgvs
    String output_dot_vcf
  }
  command <<<
    hgvsToVcf \
      ~{db} \
      ~{input_dot_hgvs} \
      ~{output_dot_vcf} \
      ~{true="-noLeftShift" false="" no_left_shift}
  >>>
  parameter_meta {
    no_left_shift: "Don't do the VCF-conventional left shifting of ambiguous placements"
    db: ""
    input_dot_hgvs: ""
    output_dot_vcf: ""
  }
}