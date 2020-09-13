version 1.0

task TransMapPslToGenePred {
  command <<<
    transMapPslToGenePred
  >>>
  output {
    File out_stdout = stdout()
  }
}