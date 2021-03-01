version 1.0

task Igor {
  command <<<
    igor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}