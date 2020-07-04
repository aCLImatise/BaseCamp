version 1.0

task Vcfcleancomplex {
  input {
    String vcf_file
  }
  command <<<
    vcfcleancomplex \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
}