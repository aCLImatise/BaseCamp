version 1.0

task Expandcurrent {
  command <<<
    expand_current
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}