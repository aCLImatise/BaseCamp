version 1.0

task Tadpipesh {
  input {
    String in
  }
  command <<<
    tadpipe_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}