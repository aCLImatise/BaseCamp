version 1.0

task Babel {
  command <<<
    babel
  >>>
  output {
    File out_stdout = stdout()
  }
}