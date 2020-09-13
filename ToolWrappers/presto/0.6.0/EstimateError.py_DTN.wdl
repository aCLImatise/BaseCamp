version 1.0

task EstimateErrorpyDTN {
  input {
    String estimate_error_do_tpy
  }
  command <<<
    EstimateError_py DTN \
      ~{estimate_error_do_tpy}
  >>>
  parameter_meta {
    estimate_error_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}