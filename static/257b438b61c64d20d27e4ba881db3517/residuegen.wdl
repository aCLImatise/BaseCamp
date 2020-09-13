version 1.0

task Residuegen {
  command <<<
    residuegen
  >>>
  output {
    File out_stdout = stdout()
  }
}