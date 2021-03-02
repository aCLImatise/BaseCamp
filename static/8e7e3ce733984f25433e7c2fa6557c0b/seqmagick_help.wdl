version 1.0

task SeqmagickHelp {
  input {
    String action
  }
  command <<<
    seqmagick help \
      ~{action}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqmagick:0.8.4--py_1"
  }
  parameter_meta {
    action: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}