version 1.0

task Vcfkeepinfo {
  input {
    String vcf_file
    String? field_one
    String? field_two
  }
  command <<<
    vcfkeepinfo \
      ~{vcf_file} \
      ~{field_one} \
      ~{field_two}
  >>>
  parameter_meta {
    vcf_file: ""
    field_one: ""
    field_two: ""
  }
}