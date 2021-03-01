version 1.0

task PopMissingFiltersh {
  command <<<
    pop_missing_filter_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}