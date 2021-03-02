version 1.0

task EstimateErrorpyErrorset {
  input {
    String estimate_error_do_tpy
  }
  command <<<
    EstimateError_py error_set \
      ~{estimate_error_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    estimate_error_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}