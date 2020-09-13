version 1.0

task BpSearch2tablepl {
  command <<<
    bp_search2table_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}