version 1.0

task ClstrSortBypl {
  command <<<
    clstr_sort_by_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}