version 1.0

task Statssh {
  input {
    String in
  }
  command <<<
    stats_sh \
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