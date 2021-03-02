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
    docker: "None"
  }
  parameter_meta {
    parsed_b_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}