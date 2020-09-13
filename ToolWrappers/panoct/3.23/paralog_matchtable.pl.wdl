version 1.0

task ParalogMatchtablepl {
  command <<<
    paralog_matchtable_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}