version 1.0

task NanopolishComp {
  command <<<
    NanopolishComp
  >>>
  output {
    File out_stdout = stdout()
  }
}