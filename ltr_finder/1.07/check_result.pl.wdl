version 1.0

task CheckResultpl {
  command <<<
    check_result_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}