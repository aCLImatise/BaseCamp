version 1.0

task Vcfnumalt {
  input {
    String vcf_file
  }
  command <<<
    vcfnumalt \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
}