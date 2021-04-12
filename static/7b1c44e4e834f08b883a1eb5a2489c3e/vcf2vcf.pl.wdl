version 1.0

task Vcf2vcfpl {
  command <<<
    vcf2vcf_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcf2maf:1.6.20--hdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}