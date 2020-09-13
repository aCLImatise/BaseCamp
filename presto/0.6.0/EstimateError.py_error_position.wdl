version 1.0

task EstimateErrorpyErrorposition {
  input {
    String estimate_error_do_tpy
  }
  command <<<
    EstimateError_py error_position \
      ~{estimate_error_do_tpy}
  >>>
  parameter_meta {
    estimate_error_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}