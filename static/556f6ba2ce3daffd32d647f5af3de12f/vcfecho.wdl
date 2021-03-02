version 1.0

task Vcfecho {
  command <<<
    vcfecho
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}