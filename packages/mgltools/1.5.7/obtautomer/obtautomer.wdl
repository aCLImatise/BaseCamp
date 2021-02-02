version 1.0

task Obtautomer {
  command <<<
    obtautomer
  >>>
  output {
    File out_stdout = stdout()
  }
}