version 1.0

task SortByNamesh {
  command <<<
    sort_by_name_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}