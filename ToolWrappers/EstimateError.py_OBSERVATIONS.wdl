version 1.0

task EstimateErrorpyOBSERVATIONS {
  input {
    String estimate_error_do_tpy
  }
  command <<<
    EstimateError_py OBSERVATIONS \
      ~{estimate_error_do_tpy}
  >>>
  parameter_meta {
    estimate_error_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}