version 1.0

task Tracy {
  command <<<
    tracy
  >>>
  output {
    File out_stdout = stdout()
  }
}