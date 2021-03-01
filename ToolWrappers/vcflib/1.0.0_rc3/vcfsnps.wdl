version 1.0

task Vcfsnps {
  command <<<
    vcfsnps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}