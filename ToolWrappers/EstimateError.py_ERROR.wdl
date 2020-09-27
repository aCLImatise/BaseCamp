version 1.0

task EstimateErrorpyERROR {
  input {
    String estimate_error_do_tpy
  }
  command <<<
    EstimateError_py ERROR \
      ~{estimate_error_do_tpy}
  >>>
  parameter_meta {
    estimate_error_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}