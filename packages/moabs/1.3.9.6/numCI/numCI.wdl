version 1.0

task NumCI {
  command <<<
    numCI
  >>>
  output {
    File out_stdout = stdout()
  }
}