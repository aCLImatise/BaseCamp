version 1.0

task MakeSCF {
  command <<<
    makeSCF
  >>>
  output {
    File out_stdout = stdout()
  }
}