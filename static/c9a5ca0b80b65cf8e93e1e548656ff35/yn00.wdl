version 1.0

task Yn00 {
  command <<<
    yn00
  >>>
  output {
    File out_stdout = stdout()
  }
}