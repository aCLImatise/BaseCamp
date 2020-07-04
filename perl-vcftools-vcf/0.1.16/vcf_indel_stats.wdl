version 1.0

task VcfIndelStats {
  input {
    String in_dot_vcf
    String out_dot_txt
  }
  command <<<
    vcf-indel-stats \
      ~{in_dot_vcf} \
      ~{out_dot_txt}
  >>>
  parameter_meta {
    in_dot_vcf: ""
    out_dot_txt: ""
  }
}