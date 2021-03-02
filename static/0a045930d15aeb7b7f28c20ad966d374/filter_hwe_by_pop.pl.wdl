version 1.0

task FilterHweByPoppl {
  command <<<
    filter_hwe_by_pop_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}