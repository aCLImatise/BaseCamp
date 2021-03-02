version 1.0

task Stagquerypl {
  command <<<
    stag_query_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}