version 1.0

task Vcfkeepsamples {
  input {
    String vcf_file
    String? sample_one
    String? sample_two
  }
  command <<<
    vcfkeepsamples \
      ~{vcf_file} \
      ~{sample_one} \
      ~{sample_two}
  >>>
  parameter_meta {
    vcf_file: ""
    sample_one: ""
    sample_two: ""
  }
}