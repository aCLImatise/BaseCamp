version 1.0

task Vcfhethomratio {
  input {
    String vcf_file
  }
  command <<<
    vcfhethomratio \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
}