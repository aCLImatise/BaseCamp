version 1.0

task Testnodespl {
  command <<<
    testnodes_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}