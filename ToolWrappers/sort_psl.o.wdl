version 1.0

task SortPslo {
  command <<<
    sort_psl_o
  >>>
  output {
    File out_stdout = stdout()
  }
}