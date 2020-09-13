version 1.0

task MkGottchaTaxTreepl {
  command <<<
    mkGottchaTaxTree_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}