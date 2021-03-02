version 1.0

task SeqtkRandbase {
  input {
    String in_dot_fa
  }
  command <<<
    seqtk randbase \
      ~{in_dot_fa}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}