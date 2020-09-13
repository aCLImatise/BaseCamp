version 1.0

task Ete3 {
  command <<<
    ete3
  >>>
  output {
    File out_stdout = stdout()
  }
}