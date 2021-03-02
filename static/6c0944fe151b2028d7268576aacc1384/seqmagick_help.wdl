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
    docker: "None"
  }
  parameter_meta {
    action: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}