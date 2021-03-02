version 1.0

task SortPslo {
  command <<<
    sort_psl_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}