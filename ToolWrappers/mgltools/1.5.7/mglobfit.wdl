version 1.0

task Mglobfit {
  command <<<
    mglobfit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}