version 1.0

task Idbao {
  command <<<
    idba_o
  >>>
  output {
    File out_stdout = stdout()
  }
}