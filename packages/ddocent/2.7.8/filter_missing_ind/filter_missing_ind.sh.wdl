version 1.0

task FilterMissingIndsh {
  command <<<
    filter_missing_ind_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}