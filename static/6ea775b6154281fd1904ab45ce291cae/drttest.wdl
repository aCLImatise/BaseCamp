version 1.0

task Drttest {
  command <<<
    drttest
  >>>
  output {
    File out_stdout = stdout()
  }
}