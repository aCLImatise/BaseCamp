version 1.0

task ClstrListSortpl {
  command <<<
    clstr_list_sort_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}