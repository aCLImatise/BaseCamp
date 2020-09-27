version 1.0

task Srapath2 {
  command <<<
    srapath_2
  >>>
  output {
    File out_stdout = stdout()
  }
}