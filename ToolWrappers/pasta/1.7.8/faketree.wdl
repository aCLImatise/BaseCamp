version 1.0

task Faketree {
  command <<<
    faketree
  >>>
  output {
    File out_stdout = stdout()
  }
}