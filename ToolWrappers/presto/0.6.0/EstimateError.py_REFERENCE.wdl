version 1.0

task EstimateErrorpyREFERENCE {
  input {
    String estimate_error_do_tpy
  }
  command <<<
    EstimateError_py REFERENCE \
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