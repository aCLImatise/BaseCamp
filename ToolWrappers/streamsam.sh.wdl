version 1.0

task Streamsamsh {
  input {
    String in
  }
  command <<<
    streamsam_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}