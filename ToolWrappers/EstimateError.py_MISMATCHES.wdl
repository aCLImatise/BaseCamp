version 1.0

task EstimateErrorpyMISMATCHES {
  input {
    String estimate_error_do_tpy
  }
  command <<<
    EstimateError_py MISMATCHES \
      ~{estimate_error_do_tpy}
  >>>
  parameter_meta {
    estimate_error_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}