version 1.0

task Vcf2vcfpl {
  command <<<
    vcf2vcf_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}