version 1.0

task Genewise {
  command <<<
    genewise
  >>>
  output {
    File out_stdout = stdout()
  }
}