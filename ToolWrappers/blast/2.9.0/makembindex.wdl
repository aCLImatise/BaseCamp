version 1.0

task Makembindex {
  command <<<
    makembindex
  >>>
  output {
    File out_stdout = stdout()
  }
}