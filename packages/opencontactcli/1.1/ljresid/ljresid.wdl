version 1.0

task Ljresid {
  command <<<
    ljresid
  >>>
  output {
    File out_stdout = stdout()
  }
}