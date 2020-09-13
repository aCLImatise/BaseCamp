version 1.0

task Tabutils {
  command <<<
    tabutils
  >>>
  output {
    File out_stdout = stdout()
  }
}