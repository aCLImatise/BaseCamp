version 1.0

task ParseDbpySequences {
  input {
    String parsed_b_do_tpy
  }
  command <<<
    ParseDb_py sequences \
      ~{parsed_b_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/changeo:1.0.2--py_0"
  }
  parameter_meta {
    parsed_b_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}