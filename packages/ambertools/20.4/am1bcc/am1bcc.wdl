version 1.0

task Am1bcc {
  command <<<
    am1bcc
  >>>
  output {
    File out_stdout = stdout()
  }
}