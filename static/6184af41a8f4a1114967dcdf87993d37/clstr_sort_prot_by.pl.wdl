version 1.0

task ClstrSortProtBypl {
  command <<<
    clstr_sort_prot_by_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}