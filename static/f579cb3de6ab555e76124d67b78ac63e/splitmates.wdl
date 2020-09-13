version 1.0

task Splitmates {
  command <<<
    splitmates
  >>>
  output {
    File out_stdout = stdout()
  }
}