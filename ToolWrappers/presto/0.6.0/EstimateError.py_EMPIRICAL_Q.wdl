version 1.0

task EstimateErrorpyEMPIRICALQ {
  input {
    String estimate_error_do_tpy
  }
  command <<<
    EstimateError_py EMPIRICAL_Q \
      ~{estimate_error_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    estimate_error_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}