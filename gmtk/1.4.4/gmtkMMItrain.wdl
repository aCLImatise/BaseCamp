version 1.0

task GmtkMMItrain {
  command <<<
    gmtkMMItrain
  >>>
  output {
    File out_stdout = stdout()
  }
}