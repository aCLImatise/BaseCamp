version 1.0

task Ir {
  command <<<
    ir
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}