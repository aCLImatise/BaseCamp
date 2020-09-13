version 1.0

task GenePredToFakePsl {
  command <<<
    genePredToFakePsl
  >>>
  output {
    File out_stdout = stdout()
  }
}