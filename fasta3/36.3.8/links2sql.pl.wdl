version 1.0

task Links2sqlpl {
  command <<<
    links2sql_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}