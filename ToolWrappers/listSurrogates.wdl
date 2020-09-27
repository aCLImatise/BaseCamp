version 1.0

task ListSurrogates {
  command <<<
    listSurrogates
  >>>
  output {
    File out_stdout = stdout()
  }
}