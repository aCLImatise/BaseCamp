version 1.0

task Vcfparsealts {
  input {
    File vcf_file
  }
  command <<<
    vcfparsealts \
      ~{vcf_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}