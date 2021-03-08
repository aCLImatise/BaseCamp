version 1.0

task Vcfkeepgeno {
  input {
    File vcf_file
    Int? field_one
    Int? field_two
  }
  command <<<
    vcfkeepgeno \
      ~{vcf_file} \
      ~{field_one} \
      ~{field_two}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
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