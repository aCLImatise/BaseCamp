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
    docker: "quay.io/biocontainers/hyphy:2.5.28--h3db2f75_0"
  }
  parameter_meta {
    to: "MPIReceive(-1, fromNode, result_String);"
  }
  output {
    File out_stdout = stdout()
  }
}