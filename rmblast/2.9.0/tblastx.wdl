version 1.0

task Tblastx {
  command <<<
    tblastx
  >>>
  output {
    File out_stdout = stdout()
  }
}