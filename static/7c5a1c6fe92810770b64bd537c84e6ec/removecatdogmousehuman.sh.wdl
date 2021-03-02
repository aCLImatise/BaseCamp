version 1.0

task Removecatdogmousehumansh {
  input {
    String in
  }
  command <<<
    removecatdogmousehuman_sh \
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