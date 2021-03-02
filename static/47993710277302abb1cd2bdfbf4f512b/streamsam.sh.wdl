version 1.0

task Streamsamsh {
  input {
    String in
  }
  command <<<
    streamsam_sh \
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