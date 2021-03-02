version 1.0

task HyphySw {
  input {
    String to
  }
  command <<<
    hyphy sw \
      ~{to}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    to: "MPIReceive(-1, fromNode, result_String);"
  }
  output {
    File out_stdout = stdout()
  }
}