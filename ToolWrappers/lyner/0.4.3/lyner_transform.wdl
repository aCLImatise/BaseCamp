version 1.0

task LynerTransform {
  input {
    Int? log_two_vertical_line_log_one_zero_vertical_line_log_vertical_line_exp_vertical_line_logo_nep_vertical_line_ex_pm_one_vertical_line_transpose
  }
  command <<<
    lyner transform \
      ~{log_two_vertical_line_log_one_zero_vertical_line_log_vertical_line_exp_vertical_line_logo_nep_vertical_line_ex_pm_one_vertical_line_transpose}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_two_vertical_line_log_one_zero_vertical_line_log_vertical_line_exp_vertical_line_logo_nep_vertical_line_ex_pm_one_vertical_line_transpose: ""
  }
  output {
    File out_stdout = stdout()
  }
}