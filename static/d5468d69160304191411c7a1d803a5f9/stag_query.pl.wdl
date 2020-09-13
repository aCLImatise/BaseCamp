version 1.0

task Stagquerypl {
  command <<<
    stag_query_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}