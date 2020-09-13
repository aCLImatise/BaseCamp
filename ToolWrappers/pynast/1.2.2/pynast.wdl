version 1.0

task Pynast {
  command <<<
    pynast
  >>>
  output {
    File out_stdout = stdout()
  }
}