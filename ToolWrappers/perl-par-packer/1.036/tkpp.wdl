version 1.0

task Tkpp {
  command <<<
    tkpp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}