version 1.0

task QaToQac {
  input {
    String in_dot_qa
    String out_dot_qac
  }
  command <<<
    qaToQac \
      ~{in_dot_qa} \
      ~{out_dot_qac}
  >>>
  parameter_meta {
    in_dot_qa: ""
    out_dot_qac: ""
  }
}