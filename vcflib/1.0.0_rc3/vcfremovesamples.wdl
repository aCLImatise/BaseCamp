version 1.0

task Vcfremovesamples {
  input {
    String vcf_file
    String? sample_one
    String? sample_two
  }
  command <<<
    vcfremovesamples \
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