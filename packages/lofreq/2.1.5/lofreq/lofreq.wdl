version 1.0

task Lofreq {
  command <<<
    lofreq
  >>>
  output {
    File out_stdout = stdout()
  }
}