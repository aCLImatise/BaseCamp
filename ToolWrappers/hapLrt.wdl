version 1.0

task HapLrt {
  command <<<
    hapLrt
  >>>
  output {
    File out_stdout = stdout()
  }
}