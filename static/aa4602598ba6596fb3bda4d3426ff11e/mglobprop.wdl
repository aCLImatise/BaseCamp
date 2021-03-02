version 1.0

task Mglobprop {
  command <<<
    mglobprop
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}