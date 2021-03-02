version 1.0

task Babel {
  command <<<
    babel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}