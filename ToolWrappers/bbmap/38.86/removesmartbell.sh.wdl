version 1.0

task Removesmartbellsh {
  input {
    String in
  }
  command <<<
    removesmartbell_sh \
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