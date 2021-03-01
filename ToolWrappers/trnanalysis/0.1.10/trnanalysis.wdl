version 1.0

task Trnanalysis {
  command <<<
    trnanalysis
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}