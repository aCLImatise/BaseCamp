version 1.0

task Alc {
  command <<<
    alc
  >>>
  output {
    File out_stdout = stdout()
  }
}