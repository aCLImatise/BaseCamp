version 1.0

task VcfTstv {
  input {
    String cat
    File file_dot_vcf
  }
  command <<<
    vcf-tstv \
      ~{cat} \
      ~{file_dot_vcf}
  >>>
  parameter_meta {
    cat: ""
    file_dot_vcf: ""
  }
}