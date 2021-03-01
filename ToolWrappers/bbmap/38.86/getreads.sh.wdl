version 1.0

task Getreadssh {
  input {
    String in
  }
  command <<<
    getreads_sh \
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