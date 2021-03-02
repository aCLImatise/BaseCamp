version 1.0

task Minion {
  command <<<
    minion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}