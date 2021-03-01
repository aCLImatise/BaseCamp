version 1.0

task ParalogMatchtablepl {
  command <<<
    paralog_matchtable_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}