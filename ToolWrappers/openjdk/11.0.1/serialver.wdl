version 1.0

task Serialver {
  command <<<
    serialver
  >>>
  output {
    File out_stdout = stdout()
  }
}