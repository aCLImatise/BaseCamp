version 1.0

task Shmlast {
  command <<<
    shmlast
  >>>
  output {
    File out_stdout = stdout()
  }
}