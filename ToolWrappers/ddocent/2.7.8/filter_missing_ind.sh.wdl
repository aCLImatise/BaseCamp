version 1.0

task FilterMissingIndsh {
  command <<<
    filter_missing_ind_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}