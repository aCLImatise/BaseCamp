version 1.0

task Exonerateserver {
  command <<<
    exonerate_server
  >>>
  output {
    File out_stdout = stdout()
  }
}