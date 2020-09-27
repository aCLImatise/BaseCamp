version 1.0

task Splitreads {
  command <<<
    splitreads
  >>>
  output {
    File out_stdout = stdout()
  }
}