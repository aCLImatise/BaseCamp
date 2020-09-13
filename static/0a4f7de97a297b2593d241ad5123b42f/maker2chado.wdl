version 1.0

task Maker2chado {
  command <<<
    maker2chado
  >>>
  output {
    File out_stdout = stdout()
  }
}