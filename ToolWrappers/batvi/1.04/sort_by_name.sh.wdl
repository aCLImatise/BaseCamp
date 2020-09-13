version 1.0

task SortByNamesh {
  command <<<
    sort_by_name_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}