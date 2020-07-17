version 1.0

task Vcfgenotypes {
  input {
    String vcf_file
  }
  command <<<
    vcfgenotypes \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
}