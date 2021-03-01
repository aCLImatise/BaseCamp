version 1.0

task Removemicrobessh {
  input {
    String in
  }
  command <<<
    removemicrobes_sh \
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