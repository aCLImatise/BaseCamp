version 1.0

task Testnodespl {
  command <<<
    testnodes_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}