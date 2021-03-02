version 1.0

task Tadpipesh {
  input {
    String in
  }
  command <<<
    tadpipe_sh \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}