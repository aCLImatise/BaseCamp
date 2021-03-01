version 1.0

task Cutgffsh {
  input {
    String in
  }
  command <<<
    cutgff_sh \
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