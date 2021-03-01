version 1.0

task Tracedbtofrgpl {
  command <<<
    tracedb_to_frg_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}