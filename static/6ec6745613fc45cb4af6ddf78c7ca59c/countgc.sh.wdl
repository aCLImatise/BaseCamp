version 1.0

task Countgcsh {
  input {
    String in
  }
  command <<<
    countgc_sh \
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