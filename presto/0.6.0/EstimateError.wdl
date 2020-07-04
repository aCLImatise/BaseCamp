version 1.0

task EstimateError.pyDISTANCE {
  input {
    String estimate_error_do_tpy
  }
  command <<<
    EstimateError.py DISTANCE \
      ~{estimate_error_do_tpy}
  >>>
  parameter_meta {
    estimate_error_do_tpy: ""
  }
}