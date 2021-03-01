version 1.0

task Vcfremoveaberrantgenotypes {
  input {
    File vcf_file
  }
  command <<<
    vcfremoveaberrantgenotypes \
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