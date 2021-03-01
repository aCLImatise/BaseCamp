version 1.0

task Vcfnull2ref {
  input {
    File vcf_file
  }
  command <<<
    vcfnull2ref \
      ~{vcf_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}