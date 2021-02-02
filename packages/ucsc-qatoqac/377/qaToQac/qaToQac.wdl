version 1.0

task QaToQac {
  input {
    String in_dot_qa
  }
  command <<<
    qaToQac \
      ~{in_dot_qa}
  >>>
  parameter_meta {
    in_dot_qa: ""
  }
  output {
    File out_stdout = stdout()
  }
}