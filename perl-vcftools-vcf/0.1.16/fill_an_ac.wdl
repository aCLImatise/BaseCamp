version 1.0

task FillAnAc {
  input {
    String in_dot_vcf
    String out_dot_vcf
  }
  command <<<
    fill-an-ac \
      ~{in_dot_vcf} \
      ~{out_dot_vcf}
  >>>
  parameter_meta {
    in_dot_vcf: ""
    out_dot_vcf: ""
  }
}