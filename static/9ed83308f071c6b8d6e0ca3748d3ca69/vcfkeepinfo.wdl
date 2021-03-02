version 1.0

task Vcfkeepinfo {
  input {
    File vcf_file
    Int? field_one
    Int? field_two
  }
  command <<<
    vcfkeepinfo \
      ~{vcf_file} \
      ~{field_one} \
      ~{field_two}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    vcf_file: ""
    field_one: ""
    field_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}