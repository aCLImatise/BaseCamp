version 1.0

task VcfConvert {
  input {
    String cat
    String in_dot_vcf
  }
  command <<<
    vcf-convert \
      ~{cat} \
      ~{in_dot_vcf}
  >>>
  parameter_meta {
    cat: ""
    in_dot_vcf: ""
  }
}