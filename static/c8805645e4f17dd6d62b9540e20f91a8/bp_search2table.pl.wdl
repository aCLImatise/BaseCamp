version 1.0

task BpSearch2tablepl {
  command <<<
    bp_search2table_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}