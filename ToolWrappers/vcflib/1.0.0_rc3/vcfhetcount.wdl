version 1.0

task Vcfhetcount {
  command <<<
    vcfhetcount
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}