version 1.0

task Vcfclassify {
  input {
    String vcf_file
  }
  command <<<
    vcfclassify \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
}