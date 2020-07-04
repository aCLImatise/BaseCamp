version 1.0

task Vcfunphase {
  input {
    String vcf_file
  }
  command <<<
    vcfunphase \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
}