version 1.0

task ToArachne {
  command <<<
    toArachne
  >>>
  output {
    File out_stdout = stdout()
  }
}