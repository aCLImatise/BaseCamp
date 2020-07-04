version 1.0

task Vcfaltcount {
  input {
    String vcf_file
  }
  command <<<
    vcfaltcount \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
}