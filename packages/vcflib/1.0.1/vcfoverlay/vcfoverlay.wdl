version 1.0

task Vcfoverlay {
  input {
    File? vcf_file
  }
  command <<<
    vcfoverlay \
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