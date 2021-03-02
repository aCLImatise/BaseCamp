version 1.0

task Mglobminimize {
  command <<<
    mglobminimize
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}