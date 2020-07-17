version 1.0

task Vcffixup {
  input {
    String vcf_file
  }
  command <<<
    vcffixup \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
}