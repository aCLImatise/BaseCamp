version 1.0

task Xleap {
  command <<<
    xleap
  >>>
  output {
    File out_stdout = stdout()
  }
}