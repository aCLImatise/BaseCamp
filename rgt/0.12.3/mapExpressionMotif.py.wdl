version 1.0

task MapExpressionMotifpy {
  command <<<
    mapExpressionMotif_py
  >>>
  output {
    File out_stdout = stdout()
  }
}