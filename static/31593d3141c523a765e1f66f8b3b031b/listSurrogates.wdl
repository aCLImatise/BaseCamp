version 1.0

task ListSurrogates {
  command <<<
    listSurrogates
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}