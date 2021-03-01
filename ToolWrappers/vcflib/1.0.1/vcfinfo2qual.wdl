version 1.0

task Vcfinfo2qual {
  input {
    String? key
    String? vcf_file
  }
  command <<<
    vcfinfo2qual \
      ~{key} \
      ~{vcf_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    key: ""
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}