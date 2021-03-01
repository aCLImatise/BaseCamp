version 1.0

task Vcf2variants {
  command <<<
    vcf2variants
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}