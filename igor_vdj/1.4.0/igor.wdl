version 1.0

task Igor {
  command <<<
    igor
  >>>
  output {
    File out_stdout = stdout()
  }
}