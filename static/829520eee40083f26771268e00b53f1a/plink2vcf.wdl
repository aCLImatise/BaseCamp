version 1.0

task Plink2vcf {
  command <<<
    plink2vcf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}