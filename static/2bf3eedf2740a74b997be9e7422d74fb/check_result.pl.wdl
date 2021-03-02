version 1.0

task CheckResultpl {
  command <<<
    check_result_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}