version 1.0

task NEWS {
  command <<<
    NEWS
  >>>
  output {
    File out_stdout = stdout()
  }
}