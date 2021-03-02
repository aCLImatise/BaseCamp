version 1.0

task BpFilterSearchpl {
  command <<<
    bp_filter_search_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}