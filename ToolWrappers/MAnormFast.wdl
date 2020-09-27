version 1.0

task MAnormFast {
  command <<<
    MAnormFast
  >>>
  output {
    File out_stdout = stdout()
  }
}