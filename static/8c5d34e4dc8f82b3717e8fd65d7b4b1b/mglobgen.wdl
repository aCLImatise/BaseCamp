version 1.0

task Mglobgen {
  command <<<
    mglobgen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}