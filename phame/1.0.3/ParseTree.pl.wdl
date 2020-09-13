version 1.0

task ParseTreepl {
  command <<<
    ParseTree_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}