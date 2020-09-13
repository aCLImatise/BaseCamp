version 1.0

task Strling {
  command <<<
    strling
  >>>
  output {
    File out_stdout = stdout()
  }
}