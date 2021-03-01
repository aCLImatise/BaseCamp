version 1.0

task Vcf2vcfpl {
  command <<<
    vcf2vcf_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcf2maf:1.6.19--0"
  }
  output {
    File out_stdout = stdout()
  }
}