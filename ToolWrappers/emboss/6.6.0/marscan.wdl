version 1.0

task Marscan {
  command <<<
    marscan
  >>>
  output {
    File out_stdout = stdout()
  }
}