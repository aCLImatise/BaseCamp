version 1.0

task Readfq {
  input {
    String in_dot_seq
  }
  command <<<
    readfq \
      ~{in_dot_seq}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_seq: ""
  }
  output {
    File out_stdout = stdout()
  }
}