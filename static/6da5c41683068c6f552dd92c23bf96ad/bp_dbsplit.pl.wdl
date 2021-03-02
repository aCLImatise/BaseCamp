version 1.0

task BpDbsplitpl {
  command <<<
    bp_dbsplit_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}