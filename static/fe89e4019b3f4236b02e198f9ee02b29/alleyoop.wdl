version 1.0

task Alleyoop {
  command <<<
    alleyoop
  >>>
  output {
    File out_stdout = stdout()
  }
}