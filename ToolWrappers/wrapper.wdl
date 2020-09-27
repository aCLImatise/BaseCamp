version 1.0

task Wrapper {
  command <<<
    wrapper
  >>>
  output {
    File out_stdout = stdout()
  }
}