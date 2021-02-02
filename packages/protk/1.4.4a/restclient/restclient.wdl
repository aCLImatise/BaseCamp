version 1.0

task Restclient {
  command <<<
    restclient
  >>>
  output {
    File out_stdout = stdout()
  }
}